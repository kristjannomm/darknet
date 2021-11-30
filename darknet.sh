#!/bin/sh
echo Downloading darknet from https://github.com/AlexeyAB/darknet.git
echo
cd ~
git clone https://github.com/AlexeyAB/darknet.git
echo
echo Installing CUDA
echo
wget https://developer.download.nvidia.com/compute/cuda/11.5.1/local_installers/cuda_11.5.1_495.29.05_linux.run 
sudo sh cuda_11.5.1_495.29.05_linux.run
echo
echo Installing essential packages
echo
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential cmake unzip pkg-config
sudo apt-get install gcc-6 g++-6 
sudo apt-get install libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libopenblas-dev libatlas-base-dev liblapack-dev gfortran
sudo apt-get install libhdf5-serial-dev
sudo apt-get install python3-dev python3-tk python-imaging-tk
sudo apt-get install libgtk-3-dev
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
echo
echo Installing CUDA toolkit
echo
cd ~
mkdir installers
cd installers/
wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda_11.0.3_450.51.06_linux.run
sudo sh cuda_11.0.3_450.51.06_linux.run


