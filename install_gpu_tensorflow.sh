#install vim editor
sudo apt-get install vim

#install packages
sudo apt-get install openssh-server
sudo apt-get install exfat-fuse exfat-utils
sudo apt-get install unzip zip

sudo apt-get install git pkg-config cmake build-essential python3-dev  python3-pip python3-numpy python3-scipy cython3   python3-setuptools  python3-matplotlib  python3-pandas  python3-pandas-lib

#download and install anaconda3
#wget https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh
sh ./Anaconda3*-Linux-x86_64.sh



sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential

#wget https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda_9.2.88_396.26_linux

#install cuda-8.0
#wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run
sudo sh cuda*_384.81_linux.run 

sudo sh cuda*176.1_linux.run
sudo sh cuda*176.2_linux.run

#install cudnn 
#wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v7.0.5/prod/9.0_20171129/cudnn-9.0-linux-x64-v7

tar -xf cudnn-9.0-linux-x64-v7
cd cuda
#copy to cuda directory
sudo cp -P include/cudnn.h /usr/local/cuda-9.0/include
sudo cp -P lib64/libcudnn* /usr/local/cuda-9.0/lib64/
sudo chmod a+r /usr/local/cuda-9.0/include/cudnn.h
sudo chmod a+r /usr/local/cuda-9.0/lib64/libcudnn*

sudo apt-get install libcupti-dev

export CUDA_ROOT="/usr/local/cuda-9.0"
export DYLD_LIBRARY_PATH="/usr/local/cuda-9.0/lib64"
export PATH="/usr/local/cuda-9.0/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-9.0/lib64:/usr/local/cuda-9.0/extras/CUPTI/lib64:$LD_LIBRARY_PATH"


