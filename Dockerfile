FROM nvcr.io/nvidia/tensorflow:19.05-py3
RUN pip3 install keras
RUN pip3 install k3d
RUN git clone https://github.com/miroenev/teach_DL
WORKDIR /workspace
CMD jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token='' --NotebookApp.password=''
