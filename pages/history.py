import streamlit as st
from menu import menu_with_redirect
from sql import get_history
import pandas as pd
import pandas
import streamlit as st

menu_with_redirect()

st.title('识别记录')
if True:
    st.session_state.history = get_history(st.session_state.uid)
history = pd.DataFrame(st.session_state.history)

st.dataframe(history, use_container_width=2000, hide_index=True)
