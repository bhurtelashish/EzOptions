From ubuntu:latest
WORKDIR /use/app/src
ARG LANG='en_us.UTF-8'
RUN apt update && apt install -y python3-pip python3-yaml && apt upgrade -y
RUN pip3 install --upgrade pip
COPY / ./
CMD ["streamlit", "run", "main.py"]
