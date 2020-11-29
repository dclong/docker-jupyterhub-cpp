FROM dclong/jupyterhub

RUN curl -sSL https://raw.githubusercontent.com/root-project/cling/master/tools/packaging/cpt.py -o /tmp/cpt.py \
    && python3 /tmp/cpt.py --check-requirements -y \
    && python3 /tmp/cpt.py --create-dev-env Debug --with-workdir=./cling-build/ -y

#apt-get install libtinfo5
#mkdir -p ~/pre && cd ~/pre
#wget https://root.cern.ch/download/cling/cling_2019-12-08_ubuntu18.tar.bz2
#tar jxf cling_2019-12-08_ubuntu18.tar.bz2
#cd cling_2019-12-08_ubuntu18
#cp -r . /usr/.
#
#cd ~
#rm -r pre
#
#cd /usr/share/cling/Jupyter/kernel
#pip3 install -e .

#jupyter kernelspec install cling-cpp11
#jupyter kernelspec install cling-cpp14
#jupyter kernelspec install cling-cpp17
#jupyter kernelspec install cling-cpp1z
#cp /usr/share/cling/Jupyter/kernel/cling.ipynb /workdir
