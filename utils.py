import streamlit as st

import os


def save_uploaded_files(uploaded_files):
    saved_files = []
    for uploaded_file in uploaded_files:
        file_path = os.path.join("images", uploaded_file.name)
        with open(file_path, "wb") as file:
            file.write(uploaded_file.getvalue())
        saved_files.append(file_path)
    return saved_files


# def button_VATInvoice():
