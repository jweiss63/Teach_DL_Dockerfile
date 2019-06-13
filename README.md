1 -- clone repository

git clone https://github.com/jweiss63/Teach_DL_Dockerfile/ && cd Teach_DL_Dockerfile

2 -- build container [ takes 5-10 minutes ]

sudo docker build -t teachdl:v0 .

3 -- launch/run the container [ auto starts jupyter notebook ]

sudo docker run --runtime=nvidia -it --rm -p 8888:8888 -p 6006:6006 -v /datasets:/datasets teachdl:v0

4 -- launch demo from browser [ on your local machine ]

use a browser [ firefox is recommended ] and navigate to 127.0.0.1:8888

