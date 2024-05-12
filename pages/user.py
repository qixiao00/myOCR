import streamlit as st

from sql import get_history
from utils import save_uploaded_files
from menu import menu_with_redirect
from OCR_Service import handleVATInvoice, handleIDCard, handleTable
from components.multiselectBox import addMultiselect
from interface.dictionary import VATInvoice_keys_translation, Ticket_keys_translation, IDCard_keys_translation
import pandas as pd

if 'invoices' not in st.session_state:
    st.session_state.invoices = []

# Redirect to app.py if not logged in, otherwise show the navigation menu
menu_with_redirect()

files = st.file_uploader("上传文件", type=["jpg", "jpeg", "GIF", "BMP", "jpg", "PNG", "TIFF", "WebP", 'PDF'],
                         accept_multiple_files=True)

urls = save_uploaded_files(files)


def identify_id_card():
    selected_options = addMultiselect("身份证")
    st.button("识别身份证", on_click=button_function_idcard, args=(urls, selected_options, files))


def button_function_tables(urls, files):
    tables = []
    for i in range(len(urls)):
        table = handleTable(urls[i], files[i].type)
        tables.append(table)


def button_function_invoice(urls, selected_options, files):
    invoices = []
    for i in range(len(urls)):
        invoice = handleVATInvoice(urls[i], selected_options, files[i].type)
        invoice = {VATInvoice_keys_translation.get(key, value): value for key, value in invoice.items()}
        invoices.append(invoice)

    st.table(invoices)

    def outputExcel():
        df = pd.DataFrame(invoices)
        # 指定 Excel 文件的文件名
        excel_filename = 'output.xlsx'
        # 将 DataFrame 导出到 Excel 文件
        df.to_excel(excel_filename, index=False)
        print(f"导出到 {excel_filename} 完成")

    st.button("导出结果到Excel📊", on_click=outputExcel)


def button_function_idcard(urls, selected_options, files):
    id_cards = []
    for i in range(len(urls)):
        id_card = handleIDCard(urls[i], selected_options, files[i].type)
        id_card = {IDCard_keys_translation.get(key, value): value for key, value in id_card.items()}
        id_cards.append(id_card)
    st.table(id_cards)

    def outputExcel():
        df = pd.DataFrame(id_cards)
        # 指定 Excel 文件的文件名
        excel_filename = 'output_id-cards.xlsx'
        # 将 DataFrame 导出到 Excel 文件
        df.to_excel(excel_filename, index=False)
        print(f"导出到 {excel_filename} 完成")

    st.button("导出结果到Excel📊", on_click=outputExcel)


def identify_invoice():
    selected_options = addMultiselect("增值税发票")
    st.button("识别增值税发票", on_click=button_function_invoice, args=(urls, selected_options, files))


def identify_table():
    # 创建两列布局

    st.button("识别表格", on_click=button_function_tables, args=(urls, files))


# 下拉菜单
selected_option = st.selectbox("请选择要进行识别的类型", ["增值税发票识别🧾", "身份证识别💳", "表格识别📊"])
if selected_option == "增值税发票识别🧾":
    identify_invoice()
# 根据选择的选项显示相应的内容
elif selected_option == "身份证识别💳":
    identify_id_card()
elif selected_option == "表格识别📊":
    identify_table()

# st.write(sql.canUserLoginByName(st.session_state.username, st.session_state.password))
#
# st.markdown(f"You are currently logged with the role of {st.session_state.role}.")
