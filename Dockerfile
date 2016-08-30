FROM bamos/ubuntu-opencv-dlib-torch:ubuntu_14.04-opencv_2.4.11-dlib_19.0-torch_2016.07.12


RUN mkdir /app
WORKDIR /app
# copy app
COPY . /app
# Download dat file
RUN apt-get update && \
	apt-get install -y python-pip
RUN pip install -r requirements.txt  
