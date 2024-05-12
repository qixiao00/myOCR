from OCR_Api import myOCR_RecognizeVATInvoice, myOCR_RecognizeIDCard, myOCR_RecognizeTicket, myOCR_RecognizeTable
import streamlit as st
import json
from interface.dictionary import VATInvoice_keys_translation, IDCard_keys_translation, Ticket_keys_translation


def handleVATInvoice(url, selected_options, file_type):
    if url is None:
        st.write("No file selected")
        return
    else:
        res = myOCR_RecognizeVATInvoice(url, file_type)
        content = res.data.content
        content = content.__dict__

        selected_options_translation = [key for key, value in VATInvoice_keys_translation.items() if
                                        value in selected_options]
        filtered_content = {key: value for key, value in content.items() if key in selected_options_translation}
        return filtered_content


def handleIDCard(url, selected_options, file_type):
    if url is None:
        st.write("No file selected")
        return
    else:
        res = myOCR_RecognizeIDCard(url, file_type)
        content = res.data.front_result

        print(selected_options)
        selected_options_translation = []

        # 遍历selected_options列表
        for option in selected_options:
            # 检查每个选项是否在IDCard_keys_translation字典的值中
            for key, value in IDCard_keys_translation.items():
                if value == option:
                    selected_options_translation.append(key)

        print(selected_options_translation)
        filtered_content = {}

        for key, value in content.__dict__.items():
            print(key, value)
            if key in selected_options_translation:
                print('!!!')
                filtered_content[key] = value

        print(filtered_content)
        return filtered_content


def handleTicket(url, selected_options, file_type):
    if url is None:
        st.write("No file selected")
        return
    else:
        res = myOCR_RecognizeTicket(url, file_type)
        content = res.data.content
        content = content.__dict__

        selected_options_translation = [key for key, value in Ticket_keys_translation.items() if
                                        value in selected_options]
        filtered_content = {key: value for key, value in content.items() if key in selected_options_translation}
        return filtered_content


def handleTable(url, file_type):
    if url is None:
        st.write("No file selected")
        return
    else:
        myOCR_RecognizeTable(url, file_type)
