import streamlit as st
from menu import menu
import sql

# Initialize st.session_state.role to None
if "role" not in st.session_state:
    st.session_state.role = None

if 'username' not in st.session_state:
    st.session_state.username = ""

if 'password' not in st.session_state:
    st.session_state.password = ""

if 'uid' not in st.session_state:
    st.session_state.uid = ""

# Retrieve the role from Session State to initialize the widget
st.session_state._role = st.session_state.role


def login():
    st.session_state.username = username
    st.session_state.password = password
    user = sql.canUserLoginByName(st.session_state.username, st.session_state.password)
    if user.empty:
        st.info('用户名或密码错误')
    else:
        st.info('登陆成功')
        # st.query_params(page="Your profile")
        st.toast('Your profile')
        for i in user.itertuples():
            st.session_state.uid = i.id
            st.session_state.role = i.role


# 输入框用于输入用户名
username = st.text_input("Username", "123", key="username")
# 在居中的布局中添加输入框用于输入密码
password = st.text_input("Password", "123", type="password", key="password")
st.button("登录", on_click=login)

# Render the dynamic menu!
menu()
