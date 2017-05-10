BootStrap: docker
From: ubuntu:latest

%post
  apt-get update
  apt-get install -y \
          python-numpy \
          cython \
          python-matplotlib \
          git

%runscript
  cd /tmp
  
  git clone \
      https://github.com/ReScience-Archives/ReScience-Entry-Topalidou-Rougier-2015.git

  cd ReScience-Entry-Topalidou-Rougier-2015/code
  python setup.py build_ext --inplace
  python single-trial.py
  python 250-simulations.py
