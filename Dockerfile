FROM python:3.12
RUN apt update && apt install -y python3-pip python3-yaml && apt upgrade -y
RUN python -m pip install --upgrade pip
WORKDIR /apps/
ADD ./ /apps/
CMD ["streamlit", "run", "main.py"]
