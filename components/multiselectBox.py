import streamlit as st
from interface.dictionary import VATInvoice_keys_translation


def addMultiselect(type_name):
    items = []
    if type_name == "增值税发票":
        items = list(VATInvoice_keys_translation.values())
    elif type_name == "身份证":
        items = ["姓名", "性别", "民族", "出生日期", "住址", "公民身份证号码"]
    selected_options = st.multiselect(label=("请选择要识别的" + type_name + "中的字段"), options=items)
    return selected_options
