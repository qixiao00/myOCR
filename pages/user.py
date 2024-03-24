import streamlit as st
from menu import menu_with_redirect
import sql

# Redirect to app.py if not logged in, otherwise show the navigation menu
menu_with_redirect()

st.title("This page is available to all users")

st.write(sql.canUserLoginByName(st.session_state.username, st.session_state.password))

st.markdown(f"You are currently logged with the role of {st.session_state.role}.")

st.file_uploader("Upload a file", type=["png", "jpg", "jpeg"])
st.camera_input("Take a photo")