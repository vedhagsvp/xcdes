FROM ubuntu:latest

RUN apt-get update && apt-get install -y ocl-icd-opencl-dev && apt-get install -y git wget

WORKDIR /app

RUN wget https://github.com/xpherechain/Xphere-miner/releases/download/v0.0.6/miner-linux-amd64 && chmod +x miner-linux-amd64

COPY cpu.sh /app/cpu.sh
RUN chmod +x /app/cpu.sh

CMD ["/app/cpu.sh"]
