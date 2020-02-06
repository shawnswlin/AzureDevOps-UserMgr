FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
ADD UserMgr /UserMgr
ENTRYPOINT ["python3", "/UserMgr/api.py"]

