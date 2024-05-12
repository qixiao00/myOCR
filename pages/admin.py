import streamlit as st
from sql import get_users
from menu import menu_with_redirect
from utils import filter_non_user
# Redirect to app.py if not logged in, otherwise show the navigation menu
menu_with_redirect()

# Verify the user's role
if st.session_state.role not in ["admin", "superadmin"]:
    st.warning("You do not have permission to view this page.")
    st.stop()

st.title("管理员页")
role = ''
if st.session_state.role == "superadmin":
    role = '超级管理员'
elif st.session_state.role == "admin":
    role = '管理员'

st.markdown(f"您现在以 {role}身份登录。")

st.write(filter_non_user(get_users()))
