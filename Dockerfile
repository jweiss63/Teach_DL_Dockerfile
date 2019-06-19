FROM nvcr.io/nvidia/tensorflow:19.05-py3
## ADD xxxfrom /workspace/xxxto (add bash script to run jupyter and tensorboard) then change CMD to script name...
RUN pip3 install keras
RUN pip3 install k3d
RUN git clone https://github.com/miroenev/teach_DL
RUN git clone https://github.com/jweiss63/s9256-notebook
WORKDIR /workspace
CMD jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token='' --NotebookApp.password=''
