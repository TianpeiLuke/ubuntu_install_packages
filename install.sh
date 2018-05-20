cuda_version=9.0
cudnn_version=v7.0.5
anaconda3_version=3-5.1.0

#install vim editor
sudo apt-get install vim

#install packages
sudo apt-get install openssh-server
sudo apt-get install exfat-fuse exfat-utils
sudo apt-get install unzip zip

sudo apt-get install git pkg-config cmake build-essential python3-dev  python3-pip python3-numpy python3-scipy cython3   python3-setuptools  python3-matplotlib  python3-pandas  python3-pandas-lib

sudo apt-get update

#download and install .bashrc .bash_profile .vimrc from git
git clone https://github.com/TianpeiLuke/ubuntu_install_packages.git

cp ~/ubuntu_install_packages/.vimrc  $HOME
cp ~/ubuntu_install_packages/.bashrc $HOME

mkdir .vim
cd .vim
mkdir colors
mkdir backups
mkdir swaps
mkdir undo
cd ~

#install Chinese input
sudo apt-get install ibus-pinyin
sudo apt-get install ibus-sunpinyin
sudo apt-get install fcitx-googlepinyin
ibus restart

sudo apt-get update

#download and install anaconda3
wget https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh
sh ./Anaconda3*-Linux-x86_64.sh


#install latex
sudo apt-get install texlive-full
sudo apt-get install klatexformula


sudo apt-get update
sudo apt-get upgrade -y


#install java
sudo add-apt-repository ppa:webupd8team/java
sudo apt update; sudo apt install oracle-java8-installer
sudo apt install oracle-java8-set-default
echo "JAVA_HOME=$(which java)" | sudo tee -a /etc/environment

sudo apt-get install openjdk-8-jdk


#install cuda-9.0

#wget https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda_9.2.88_396.26_linux
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/1/cuda_9.0.176.1_linux-run
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/2/cuda_9.0.176.2_linux-run

sudo sh cuda*_384.81_linux.run 

sudo sh cuda*176.1_linux.run
sudo sh cuda*176.2_linux.run

#install cudnn 
wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v7.0.5/prod/9.0_20171129/cudnn-9.0-linux-x64-v7

tar -xf cudnn-9.0-linux-x64-v7
cd cuda
#copy to cuda directory
sudo cp -P include/cudnn.h /usr/local/cuda-9.0/include
sudo cp -P lib64/libcudnn* /usr/local/cuda-9.0/lib64/
sudo chmod a+r /usr/local/cuda-9.0/include/cudnn.h
sudo chmod a+r /usr/local/cuda-9.0/lib64/libcudnn*
cd ~

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
sudo apt-get install expat  libexpat1-dev
sudo apt-get install libicu-dev
sudo apt-get install graphviz libgv-python libcgraph6 libgvc6 libgvpr2 libpathplan4 libgvc6-plugins-gtk libxdot4
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev  libavutil-dev libavfilter-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libtiff-opengl libtiff-tools
sudo apt-get install libgtk-3-dev
sudo apt-get install libtbb-dev
sudo apt-get install libeigen3-dev

pip install --upgrade virtualenv

#install xgboost
git clone --recursive https://github.com/dmlc/xgboost
cd xgboost
make -j8
cd ~

#install cv3
git clone https://github.com/opencv/opencv.git
cd ~/opencv
mkdir build
cd build/

cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/usr/local -DPYTHON_EXECUTABLE=$(which python3)  -DWITH_TBB=ON -DWITH_IPP=ON  -DWITH_TIFF=OFF -DWITH_V4L=ON -DWITH_QT=ON -DWITH_OPENGL=ON -DWITH_CUBLAS=ON -DCUDA_NVCC_FLAGS="-D_FORCE_INLINES"  -DWITH_OPENMP=ON -DWITH_CUDA=ON -DCUDA_FAST_MATH=ON -DBUILD_TESTS=ON ..

make -j $(($(nproc) + 1))
make install
cd ~

#install mxnet
conda install -c anaconda mxnet
