import streamlit as st

# Initialize connection.
conn = st.connection('mysql', type='sql')


def get_users():
    users = conn.query('select * from users;', ttl=600)
    return users


def canUserLoginByName(username, password):
    user = conn.query('SELECT * FROM users WHERE username = "{}" and password = "{}";'.format(str(username),
                                                                                              str(password)), ttl=600)
    return user
