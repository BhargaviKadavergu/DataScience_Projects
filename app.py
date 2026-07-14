import streamlit as st
import numpy as np
from PIL import Image
from tensorflow.keras.models import load_model

model=load_model("Brain_Tumor_Model.keras")

classes=[
'Glioma',
'Meningioma',
'No Tumor',
'Pituitary'
]

st.title("Brain Tumor MRI Classifier")

uploaded=st.file_uploader(
"Upload MRI Image",
type=["jpg","png","jpeg"]
)

if uploaded:

    image=Image.open(uploaded)

    st.image(image,width=300)

    img=image.resize((224,224))

    x=np.array(img)/255.0

    x=np.expand_dims(x,0)

    prediction=model.predict(x)

    st.success(classes[np.argmax(prediction)])

    st.write(prediction)
