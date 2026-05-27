import html

import streamlit as st

st.set_page_config(page_title="Fancy Text", page_icon="✨", layout="centered")

st.title("✨ Fancy Text Display")
st.caption("Type something below and see it in a decorative font.")

user_text = st.text_input("Your message", placeholder="Hello, world!")

if user_text:
    st.markdown(
        f"""
        <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
        <div style="
            font-family: 'Pacifico', cursive;
            font-size: 3rem;
            text-align: center;
            margin: 2rem 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-shadow: 0 4px 24px rgba(102, 126, 234, 0.35);
            padding: 1rem;
            line-height: 1.4;
        ">{html.escape(user_text)}</div>
        """,
        unsafe_allow_html=True,
    )
else:
    st.info("Enter text above to preview it in fancy style.")
