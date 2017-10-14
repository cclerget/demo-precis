BootStrap: docker
From: busybox

<<<<<<< HEAD
%setup
  echo "hello" > $SINGULARITY_ROOTFS/hello
=======
%post
  apt-get update
  apt-get install -y \
          python-numpy \
          cython \
          python-matplotlib \
          git

%runscript
  cd /tmp
  echo 'Get code and run simulations'

  git clone \
      https://github.com/ReScience-Archives/ReScience-Entry-Topalidou-Rougier-2015.git

  cd ReScience-Entry-Topalidou-Rougier-2015/code
  python setup.py build_ext --inplace
  python single-trial.py
  python 250-simulations.py
>>>>>>> fa3267b9d5212dc0d816209c5617ef89639637db
