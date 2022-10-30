FROM nvidia/cuda:11.2.2-cudnn8-devel-ubuntu20.04

RUN apt update
RUN apt install -y python3 python3-pip
RUN python3 -m pip install --no-cache-dir --upgrade pip
RUN python3 -m pip --no-cache-dir install markupsafe==2.0.1 jupyter tensorflow
EXPOSE 8888
COPY notebooks /notebooks
WORKDIR "/notebooks"
CMD ["jupyter","notebook", "--ip='*'", "--port=8888", "--allow-root"]
