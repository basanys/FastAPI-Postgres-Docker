FROM --platform=arm64 python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirments.txt requirments.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirments.txt
COPY . /app
EXPOSE 8000