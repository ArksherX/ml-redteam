FROM python:3.10-slim

RUN apt update && apt install -y git curl && \
    pip install --upgrade pip

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
CMD ["/bin/bash"]
