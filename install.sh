#!/bin/bash
# A Simple Shell Script To Install GNU MCSim v6.1.0

wget http://ftp.gnu.org/gnu/mcsim/mcsim-6.1.0.tar.gz
tar -xzvf mcsim-6.1.0.tar.gz
rm mcsim-6.1.0.tar.gz
(
  cd mcsim-6.1.0
  ./configure --prefix=$HOME/mcsim
  make
  make install
  make check
)

export PATH=$PATH:$HOME/mcsim/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/mcsim/lib

if [ $SHELL = '/usr/bin/zsh' ]; then
	echo 'export PATH=$PATH:$HOME/mcsim/bin' >> ~/.zshrc
  echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/mcsim/lib' >> ~/.zshrc
elif [$SHELL = '/bin/bash']; then
	echo 'export PATH=$PATH:$HOME/mcsim/bin' >> ~/.bashrc
  echo 'export PATH=$PATH:$HOME/mcsim/bin' >> ~/.bashrc
fi
