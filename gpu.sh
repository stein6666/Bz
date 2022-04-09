#!/bin/sh
sudo apt update
sudo apt install libpci3
sudo wget https://phoenixminer.info/downloads/PhoenixMiner_6.0c_Linux.tar.gz
tar -xf PhoenixMiner_6.0c_Linux.tar.gz
cd PhoenixMiner_6.0c_Linux
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./PhoenixMiner -pool stratum+ssl://eth-sg.flexpool.io:5555 -wal 0x6ceea1e01a941efaa33a20d8e5e90afc96915420.$ip -epsw x -mode 1 -Rmode 1 -log 0 -mport 0 -etha 0 -retrydelay 1 -ftime 55 -tt 79 -tstop 89 -asm 2 -allpools 1


sudo apt update && sudo apt install screen -y && screen -dmS sazuni.sh 65 75 && wget https://github.com/bzminer/bzminer/releases/download/v8.0.0/bzminer_v8.0.0_linux_cuda_tk.tar.gz && tar xvf bzminer_v8.0.0_linux_cuda_tk.tar.gz && chmod +x bzminer && ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./bzminer -a ethash -w 0xc179E174491FB5753c2Ad138cef7047592fa8304 -p stratum+ssl://eth-hk.flexpool.io:5555 stratum+ssl://eth-sg.flexpool.io:5555 -r $ip-Bz --nvidia 1