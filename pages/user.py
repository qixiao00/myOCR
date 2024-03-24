import streamlit as st
from menu import menu_with_redirect

# Redirect to app.py if not logged in, otherwise show the navigation menu
menu_with_redirect()

st.title("This page is available to all users")
conn = st.connection('mysql', type='sql')

# Perform query.
df = conn.query('SELECT * from user;', ttl=600)

# Print results.
for row in df.itertuples():
    st.write(f"{row.name} has a :{row.pet}:")

st.markdown(f"You are currently logged with the role of {st.session_state.role}.")