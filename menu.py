from time import sleep
import streamlit as st


def authenticated_menu():
    # Show a navigation menu for authenticated users
    st.sidebar.page_link("app.py", label="切换账户 ↪")
    st.sidebar.page_link("pages/user.py", label="开始识别🔍")
    st.sidebar.page_link("pages/history.py", label="识别记录🗒️")
    if st.session_state.role in ["admin", "superadmin"]:
        st.sidebar.page_link("pages/admin.py", label="管理员 👨‍💼")
        st.sidebar.page_link(
            "pages/super-admin.py",
            label="超级管理员 👮",
            disabled=st.session_state.role != "superadmin",
        )


def unauthenticated_menu():
    # Show a navigation menu for unauthenticated users
    st.sidebar.page_link("app.py", label="Log in")


def menu():
    # Determine if a user is logged in or not, then show the correct
    # navigation menu
    if "role" not in st.session_state or st.session_state.role is None:
        unauthenticated_menu()
        return
    authenticated_menu()


def logout():
    st.session_state.logged_in = False
    st.info("Logged out successfully!")
    sleep(0.5)
    st.switch_page("app.py")


def menu_with_redirect():
    # Redirect users to the main page if not logged in, otherwise continue to
    # render the navigation menu
    if "role" not in st.session_state or st.session_state.role is None:
        st.switch_page("app.py")
    menu()
