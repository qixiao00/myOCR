from OCR_Api import myOCR_RecognizeVATInvoice
import streamlit as st


def handleVATInvoice(url, type):
    if url is None:
        st.write("No file selected")
        return
    else:
        st.write(myOCR_RecognizeVATInvoice(url, type))


