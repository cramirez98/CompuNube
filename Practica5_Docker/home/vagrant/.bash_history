sudo apt-get remove docker docker-engine docker.io containerd runc 
sudo apt-get update
sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg-agent     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
sudo systemctl status docker
sudo docker info | more
sudo docker search centos-ssh-apache
sudo docker pull jdeathe/centos-ssh-apache-php
sudo docker images
sudo docker run -d --name web1 -p 8800:80 jdeathe/centos-ssh-apache-php
sudo docker ps
sudo docker container ls -a
sudo docker container stop 420e480dd15b
sudo docker container stop b61b9c365756
sudo docker container rm b61b9c365756
sudo docker container ls -a
sudo docker pull centos
mkdir test_docker
cd test_docker
vim Dockerfile
cat Dockerfile 
sudo docker build -t omondragon/centosweb
sudo docker build -t omondragon/centosweb .
sudo docker run --name webprueba -d -p 9000:80 omondragon/centosweb
cd ../
mkdir test_docker2
cd test_docker2
mkdir voldocker
ls
vim voldocker/index.html
cat voldocker/index.html 
vim Dockerfile
cat Dockerfile 
sudo docker build -t omondragon/testdir .
FROM centos
LABEL maintainer="Oscar Mondragon"
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-* &&    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*
RUN yum upgrade -y
RUN yum install httpd -y
COPY voldocker/ /var/www/html/
RUN chmod -R 777 /var/www/html
EXPOSE 80
sudo docker run -d --name webcontainer -p 9910:80 omondragon/testdir
docker logs webcontainer
sudo docker logs webcontainer
sudo docker container ls -a
sudo docker logs ba59538b9f7b
sudo docker logs 8f513088c21e
sudo docker exec -it webcontainer /bin/bash
cd ../
ls
mkdir jupyternotebook
cd jupyternotebook/
vim Dockerfile
cat Dockerfile 
sudo docker build -t cramirez98/jupyterdatascience .
sudo docker ps
sudo docker stop 8f513088c21e
sudo docker stop 916a1c509bb0
ls
sudo docker ps
sudo docker images
sudo docker run -d -p 80:80 cramirez98/jupyterdatascience
sudo docker container stop 
sudo docker ps
sudo docker stop c9fe621c0166
vim Dockerfile 
sudo docker build -t cramirez98/jupyterdatascience .
cat Dockerfile 
vim Dockerfile 
sudo docker build -t cramirez98/jupyterdatascience .
sudo docker run -d -p 8888:80 cramirez98/jupyterdatascience
sudo docker ps
sudo docker run -d -p 8888:8888 cramirez98/jupyterdatascience
sudo docker ps
vim Dockerfile 
sudo docker build -t cramirez98/jupyterdatascience .
sudo docker run -d -p 8888:8888 cramirez98/jupyterdatascience
sudo docker ps
sudo docker stop baa916c7f389
sudo docker run -p 8888:80 cramirez98/jupyterdatascience
sudo docker ps
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v /vagrant/notebooks/:~
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v /vagrant/notebooks/:~/
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v /vagrant/notebooks/:~
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v /vagrant/notebooks/:~/notebooks/
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v /vagrant/notebooks/:/home/jovyan
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v /vagrant/notebooks/:/home/jovyan/
cd /vagrant/notebooks/
ls
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v /vagrant/notebooks/:/home/jovyan/
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v /vagrant/notebooks/:/bin/bash/
cd ~
ls
mkdir tesy
rmdir tesy
mkdir test
sudo docker run -p 8888:8888 cramirez98/jupyterdatascience -v ~/test/:/bin/bash/
sudo docker run -p 8888:8888 -v ~/test/:/home/ cramirez98/jupyterdatascience/
sudo docker run -p 8888:8888 -v ~/test/:/home/ cramirez98/jupyterdatascience
sudo docker run -p 8888:8888 -v ~/test/jovyan/:/home/ cramirez98/jupyterdatascience
sudo docker run -p 8888:8888 -v ~/test/jovyan/:/home/ --group-add=users cramirez98/jupyterdatascience
docker run -i -t -p 8888:8888 -v ~/Documents/JupyterNoteBooks/:/opt/notebooks continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --[Aip='*' --port=8888 \
    --no-browser --allow-root"
sudo docker run -i -t -p 8888:8888 -v ~/Documents/JupyterNoteBooks/:/opt/notebooks continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"
sudo docker run -i -t -p 8888:8888 -v /vagrant/notebooks/:/opt/notebooks continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"
exit
sudo docker exec -it fashion_mnist = keras.datasets.fashion_mnist
sudo docker exec -it cramirez98/jupyterdatascience /bin/bash
sudo docker ps
sudo docker exec -it 8641b6d7443e /bin/bash
pwd
sudo docker exec -it 8641b6d7443e /bin/bash
sudo docker ps
sudo docker exec -it 0623d1dd2d56 /bin/bash
ls
cp cudapython/ /vagrant/
cp -r cudapython/ /vagrant/
docker
exit
ls
git
git clone https://github.com/asashiho/ml-jupyter-python3.git
ls
cd ml-jupyter-python3/
ls
cat Dockerfile 
vim Dockerfile 
cat Dockerfile 
sudo docker build -t cramirez98/mljupyter .
cd ~
docker run -i -t -p 80:8888 -v /vagrant/notebooks/:/opt/notebooks/ continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"
sudo docker run -i -t -p 80:8888 -v /vagrant/notebooks/:/opt/notebooks/ continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"
sudo docker images
cd ml-jupyter-python3/
ls
ls notebooks/
$ docker run -p 8888:8888 -p 6006:6006 -v /notebooks:/notebooks -it --rm cramirez98/mljupyter
sudo docker run -p 8888:8888 -p 6006:6006 -v /notebooks:/notebooks -it --rm cramirez98/mljupyter
sudo docker run -p 8888:8888 -p 6006:6006 -v ~/ml-jupyter-python3/notebooks/:/notebooks -it --rm cramirez98/mljupyter
sudo docker run -p 8888:8888 -v ~/ml-jupyter-python3/notebooks/:/notebooks cramirez98/mljupyter
sudo docker run -p 8888:8888 cramirez98/mljupyter
ls
vim Dockerfile 
sudo docker build -t cramirez98/mljupyter
sudo docker build -t cramirez98/mljupyter .
vim Dockerfile 
sudo docker build -t cramirez98/mljupyter .
sudo docker run -p 8888:8888 cramirez98/mljupyter
vim Dockerfile 
sudo docker build -t cramirez98/mljupyter .
sudo docker run -p 8888:8888 cramirez98/mljupyter
sudo docker run -p 8888:8888 cramirez98/mljupyter:latest
clear
cd ../
ls
mkdir cudapython
cd cudapython/
vim Dockerfile
sudo docker build -t cramirez98/cudapython .
sudo docker ps
sudo docker run -p 80:8888 cramirez98/cudapython:latest
sudo docker run -p 8888:8888 cramirez98/cudapython:latest
vim Dockerfile 
sudo docker build -t cramirez98/cudapython .
sudo docker run -p 8888:8888 cramirez98/cudapython:latest
vim Dockerfile 
sudo docker build -t cramirez98/cudapython .
sudo docker run -p 8888:8888 cramirez98/cudapython:latest
vim Dockerfile 
sudo docker build -t cramirez98/cudapython .
sudo docker run -p 8888:8888 cramirez98/cudapython:latest
vim Dockerfile 
mkdir notebooks
sudo docker build -t cramirez98/cudapython .
sudo docker run -p 8888:8888 cramirez98/cudapython:latest
sudo docker run --rm --gpus all cramirez98/cudapython:latest nvidia-smi
cd ../
git clone https://github.com/omondragon/docker-flask-example.git
ls
cd docker-flask-example/
sudo docker build -t cramirez98/flask .
nvidia-smi
sudo lshw -C display
sudo docker run -p 80:5000 cramirez98/flask
nvidia-smi
sudo lshw -C display
exit
sudo docker ps
ls
cd jupyternotebook/
ls
cat Dockerfile 
cd ../
ls
sudo docker run --name webprueba -d -p 9000:80 omondragon/centosweb
sudo docker run -d -p 9000:80 omondragon/centosweb
sudo docker stop all
sudo docker ps
sudo docker stop $(docker ps -q)
sudo docker kill $(docker ps -q)
sudo docker ps
exit
docker run -i -t -p 80:8888 -v /vagrant/notebooks/:/opt/notebooks/ continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
docker run -i -t -p 8070:8888 -v /vagrant/notebooks/:/opt/notebooks/ continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"
sudo docker run -i -t -p 8070:8888 -v /vagrant/notebooks/:/opt/notebooks/ continuumio/anaconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"
sudo docker container ls -a
sudo docker run -p 8080:8888 cramirez98/mljupyter:latest
sudo docker run -p 80:5000 cramirez98/flask
sudo docker ps
sudo docker container -ls
sudo docker containers -ls
sudo docker ls
sudo docker container ls
sudo docker container ls -a
sudo docker run -p 8090:8888 cramirez98/jupyterdatascience
