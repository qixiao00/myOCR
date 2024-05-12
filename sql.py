import streamlit as st
from sqlalchemy import text

# Initialize connection.
conn = st.connection('mysql', type='sql')


def get_users():
    users = conn.query('select * from users;', ttl=600)
    return users


def canUserLoginByName(username, password):
    user = conn.query('SELECT * FROM users WHERE username = "{}" and password = "{}";'.format(str(username),
                                                                                              str(password)), ttl=600)
    return user


def get_history(id):
    history = conn.query('SELECT * FROM files WHERE uid = "{}";'.format(str(id)), ttl=600)
    return history


def save_result_to_database(filename, content, file_type, uid):
    try:
        sql = 'INSERT INTO files (filename, content,type, uid) VALUES ("{}", "{}", "{}", "{}")'.format(filename,
                                                                                                       content,
                                                                                                       file_type, uid)
        # 执行插入操作
        with conn.session as s:
            s.execute(text(sql))
            s.commit()
            st.success("识别结果已成功保存到数据库中")
        st.session_state.history = get_history(st.session_state.uid)
    except Exception as e:
        st.error(f"保存识别结果到数据库时出错: {e}")
