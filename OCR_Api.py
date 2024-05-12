import json
import os
import io
from viapi.fileutils import FileUtils
from urllib.request import urlopen
from alibabacloud_ocr20191230.client import Client
from alibabacloud_ocr20191230.models import RecognizeVATInvoiceAdvanceRequest, \
    RecognizeIdentityCardAdvanceRequest, RecognizeTrainTicketRequest, RecognizeTrainTicketAdvanceRequest
from alibabacloud_tea_openapi.models import Config
from alibabacloud_tea_util.models import RuntimeOptions
import streamlit as st
import json
import base64
import os
import ssl
from sql import save_result_to_database
from table import RecognizeIdentityTableRequest

file_utils = FileUtils(os.environ['ALIBABA_CLOUD_ACCESS_KEY_ID'], os.environ['ALIBABA_CLOUD_ACCESS_KEY_SECRET'])
# 场景一，使用本地文件，第一个参数为文件路径，第二个参数为生成的url后缀，但是并不能通过这种方式改变真实的文件类型，第三个参数True表示本地文件模式

config = Config(
    # 创建AccessKey ID和AccessKey Secret，请参考https://help.aliyun.com/document_detail/175144.html
    # 如果您用的是RAM用户的AccessKey，还需要为RAM用户授予权限AliyunVIAPIFullAccess，请参考https://help.aliyun.com/document_detail/145025.html
    # 从环境变量读取配置的AccessKey ID和AccessKey Secret。运行代码示例前必须先配置环境变量。
    access_key_id=os.environ.get('ALIBABA_CLOUD_ACCESS_KEY_ID'),
    access_key_secret=os.environ.get('ALIBABA_CLOUD_ACCESS_KEY_SECRET'),
    # 访问的域名
    endpoint='ocr.cn-shanghai.aliyuncs.com',
    # 访问的域名对应的region
    region_id='cn-shanghai'
)


def myOCR_RecognizeVATInvoice(url, type):
    # 场景一：文件在本地
    img = open(url, 'rb')
    runtime = RuntimeOptions()
    recognize_vatinvoice_request = RecognizeVATInvoiceAdvanceRequest(
        file_urlobject=img,
        file_type='jpg'
    )
    try:
        # 初始化Client
        client = Client(config)
        response = client.recognize_vatinvoice_advance(recognize_vatinvoice_request, runtime)
        mysql_res = save_result_to_database(url, response.body.data.content, '增值税发票', st.session_state.uid)
        return response.body
    except Exception as error:
        # 获取整体报错信息
        print(error)


def myOCR_RecognizeIDCard(url, type):
    # 场景一：文件在本地
    img = open(url, 'rb')
    runtime = RuntimeOptions()
    recognize_id_request = RecognizeIdentityCardAdvanceRequest(
        image_urlobject=img
    )
    try:
        # 初始化Client
        client = Client(config)
        response = client.recognize_identity_card_advance(recognize_id_request, runtime)
        mysql_res = save_result_to_database(url, response.body.data, '身份证', st.session_state.uid)
        return response.body
    except Exception as error:
        # 获取整体报错信息
        print(error)


def myOCR_RecognizeTicket(url, type):
    # 场景一：文件在本地
    img = open(url, 'rb')
    runtime = RuntimeOptions()
    recognize_vatinvoice_request = RecognizeTrainTicketAdvanceRequest(
        image_urlobject=img,
    )
    try:
        # 初始化Client
        client = Client(config)
        response = client.recognize_ticket_invoice_advance(recognize_vatinvoice_request)
        mysql_res = save_result_to_database(url, response.body.data, '火车票', st.session_state.uid)
        return response.body
    except Exception as error:
        # 获取整体报错信息
        print(error)


def myOCR_RecognizeTable(url, type):
    RecognizeIdentityTableRequest(url, type)
    st.info('表格已自动添加到Excel！')
