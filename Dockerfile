FROM nvcr.io/nvidia/tensorflow:19.02-py3

# Install my-extra-package-1 and my-extra-package-2
# RUN apt-get update && apt-get install -y --no-install-recommends \
#        my-extra-package-1 \
#        my-extra-package-2 \
#      && \
#    rm -rf /var/lib/apt/lists/
RUN apt update && apt -y upgrade
# Bring in changes from outside container to /tmp
# (assumes my-tensorflow-modifications.patch is in same directory as Dockerfile)
# COPY my-tensorflow-modifications.patch /tmp
# Apply modifications
# RUN patch -p1 < /tmp/my-tensorflow-modifications.patch
# Rebuild TensorFlow for python 2 and 3
# RUN ./nvbuild.sh --python2
# RUN ./nvbuild.sh --python3
# RUN cd /workspace && git clone https://github.com/NVIDIA/DALI
# RUN cd /workspace && git clone https://github.com/NVIDIA/DeepLearningExamples
# RUN git clone https://github.com/jweiss63/notebooks
# Reset default working directory
WORKDIR /
CMD jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token='' --NotebookApp.password=''
