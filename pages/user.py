import os

import streamlit as st
import json
from utils import save_uploaded_files
from menu import menu_with_redirect
import sql
from OCR_Service import handleVATInvoice

st.session_state.username = '123'
st.session_state.password = '123'

# Redirect to app.py if not logged in, otherwise show the navigation menu
menu_with_redirect()


# st.write(sql.canUserLoginByName(st.session_state.username, st.session_state.password))
#
# st.markdown(f"You are currently logged with the role of {st.session_state.role}.")


def identify_id_card():
    st.write("这里是身份证识别功能的展示")


def button_function(urls, files):
    for i in range(len(urls)):
        handleVATInvoice(urls[i], files[i].type.split('/')[-1])


def identify_invoice():
    st.write("这里是增值税发票识别功能的展示")
    files = st.file_uploader("上传文件", type=["jpg", "jpeg", "GIF", "BMP", "jpg", "PNG", "TIFF", "WebP", 'PDF'],
                             accept_multiple_files=True)
    st.write(files)
    # 本地化
    urls = save_uploaded_files(files)
    st.write(urls)
    st.button("识别", on_click=button_function, args=(urls, files))


# 下拉菜单
selected_option = st.selectbox("请选择要进行识别的类型", ["身份证识别", "增值税发票识别"])
if selected_option == "增值税发票识别":
    identify_invoice()
# 根据选择的选项显示相应的内容
elif selected_option == "身份证识别":
    identify_id_card()

print(os.path)
