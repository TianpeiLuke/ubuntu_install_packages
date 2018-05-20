#install vim editor
sudo apt-get install vim

#install packages
sudo apt-get install openssh-server
sudo apt-get install exfat-fuse exfat-utils
sudo apt-get install unzip zip

sudo apt-get install git pkg-config cmake build-essential python3-dev  python3-pip python3-numpy python3-scipy cython3   python3-setuptools  python3-matplotlib  python3-pandas  python3-pandas-lib

#install .bashrc .bash_profile .vimrc
git clone https://github.com/TianpeiLuke/ubuntu_install_packages.git

cp ~/ubuntu_install_packages/.vimrc
cp ~/ubuntu_install_packages/.bashrc

mkdir .vim
cd .vim
mkdir colors
mkdir backups
mkdir swaps
mkdir undo

#download and install anaconda3
#wget https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh
sh ./Anaconda3*-Linux-x86_64.sh


#install latex
sudo apt-get install texlive-full


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

conda install pip seaborn gensim

#install tensorflow-gpu 
pip install --upgrade tensorflow-gpu
pip install keras

#install libraries
sudo apt-get install libatlas-dev libatlas3gf-base  libblas-dev liblapack-dev
sudo apt-get install gfortran

sudo apt-get install libboost-all-dev libboost-python-dev
sudo apt-get install libsigc++-2.0-dev
sudo apt-get install libcairo2 libcairo2-dev  libcairo-gobject2
sudo apt-get install libcairomm-1.0-dev
sudo apt-get install libcgal-dev
sudo apt-get install libsparsehash-dev
sudo apt-get install  expat  libexpat1-dev
sudo apt-get install  libicu-dev
sudo apt-get install  graphviz libgv-python libcgraph6 libgvc6 libgvpr2 libpathplan4 libgvc6-plugins-gtk libxdot4

sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev  libavutil-dev libavfilter-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libtiff-opengl libtiff-tools
sudo apt-get install libgtk-3-dev
sudo apt-get install libtbb-dev
sudo apt-get install libeigen3-dev

pip install --upgrade virtualenv
