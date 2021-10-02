#!/bin/bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
BOLD=$(tput bold)
RESET=$(tput sgr0)

die() {
  >&2 echo "${RED}Error: $1${RESET}" && exit 1
}

log_running() {
  echo " ${YELLOW}* $1${RESET}"
}

log_done() {
  echo " ${GREEN}✓ $1${RESET}"
}

log_finished() {
  echo " ${GREEN}$1${RESET}"
}



log_running "Checking for libxft2:armhf..."
dpkg -l libxft2:armhf 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libxft2:armhf already installed!"
else
  log_running "  libxft2:armhf not yet installed - installing..."
  sudo apt -y install libxft2:armhf
  if [ $? -eq 0 ]; then
    log_done "    libxft2:armhf  successfully installed!"
  else
    die "    Could not install libxft2:armhf - please check the logs above"
  fi
fi

log_running "Checking for libncurses5..."
dpkg -l libncurses5 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libncurses5 already installed!"
else
  log_running "  libncurses5 not yet installed - installing..."
  sudo apt -y install libncurses5 && sudo apt --fix-broken install
  if [ $? -eq 0 ]; then
    log_done "    libncurses5 successfully installed!"
  else
    die "    Could not install libncurses5 - please check the logs above"
  fi
fi

log_running "Checking for predict..."
dpkg -l predict 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  predict already installed!"
else
  log_running "  predict not yet installed - installing..."
  sudo wget http://ports.ubuntu.com/pool/universe/p/predict/predict_2.2.3-4build2_arm64.deb && sudo dpkg -i predict_2.2.3-4build2_arm64.deb 
  if [ $? -eq 0 ]; then
    log_done "    predict  successfully installed!"
  else
    die "    Could not install predict - please check the logs above"
  fi
fi


log_running "Checking for python-setuptools..."
dpkg -l python-setuptools 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  python-setuptools already installed!"
else
  log_running "  python-setuptools not yet installed - installing..."
  sudo apt -y install python-setuptools
  if [ $? -eq 0 ]; then
    log_done "    python-setuptools successfully installed!"
  else
    die "    Could not install python-setuptools - please check the logs above"
  fi
fi

log_running "Checking for build-essential..."
dpkg -l build-essential 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  build-essential already installed!"
else
  log_running "  build-essential not yet installed - installing..."
  sudo apt -y install build-essential
  if [ $? -eq 0 ]; then
    log_done "    build-essential successfully installed!"
  else
    die "    Could not install build-essential - please check the logs above"
  fi
fi

log_running "Checking for python3-dev..."
dpkg -l python3-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  python3-dev already installed!"
else
  log_running "  python3-dev not yet installed - installing..."
  sudo apt -y install python3-dev
  if [ $? -eq 0 ]; then
    log_done "    python3-dev successfully installed!"
  else
    die "    Could not install python3-dev - please check the logs above"
  fi
fi

log_running "Checking for libpq-dev ..."
dpkg -l libpq-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libpq-dev  already installed!"
else
  log_running "  libpq-dev  not yet installed - installing..."
  sudo apt -y install libpq-dev
  if [ $? -eq 0 ]; then
    log_done "    libpq-dev  successfully installed!"
  else
    die "    Could not install libpq-dev  - please check the logs above"
  fi
fi

log_running "Checking for python-dev ..."
dpkg -l python-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  python-dev  already installed!"
else
  log_running "  python-dev  not yet installed - installing..."
  sudo apt -y install python-dev
  if [ $? -eq 0 ]; then
    log_done "    python-dev  successfully installed!"
  else
    die "    Could not install python-dev  - please check the logs above"
  fi
fi


log_running "Checking for libxml2-dev ..."
dpkg -l libxml2-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libxml2-dev  already installed!"
else
  log_running "  libxml2-dev  not yet installed - installing..."
  sudo apt -y install libxml2-dev
  if [ $? -eq 0 ]; then
    log_done "    libxml2-dev  successfully installed!"
  else
    die "    Could not install libxml2-dev  - please check the logs above"
  fi
fi


log_running "Checking for libxslt1-dev ..."
dpkg -l libxslt1-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libxslt1-dev  already installed!"
else
  log_running "  libxslt1-dev  not yet installed - installing..."
  sudo apt -y install libxslt1-dev
  if [ $? -eq 0 ]; then
    log_done "    libxslt1-dev  successfully installed!"
  else
    die "    Could not install libxslt1-dev  - please check the logs above"
  fi
fi


log_running "Checking for libldap2-dev ..."
dpkg -l libldap2-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libldap2-dev  already installed!"
else
  log_running "  libldap2-dev  not yet installed - installing..."
  sudo apt -y install libldap2-dev
  if [ $? -eq 0 ]; then
    log_done "    libldap2-dev  successfully installed!"
  else
    die "    Could not install libldap2-dev  - please check the logs above"
  fi
fi


log_running "Checking for libsasl2-dev ..."
dpkg -l libsasl2-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libsasl2-dev  already installed!"
else
  log_running "  libsasl2-dev  not yet installed - installing..."
  sudo apt -y install libsasl2-dev
  if [ $? -eq 0 ]; then
    log_done "    libsasl2-dev  successfully installed!"
  else
    die "    Could not install libsasl2-dev  - please check the logs above"
  fi
fi


log_running "Checking for libffi-dev ..."
dpkg -l libffi-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libffi-dev  already installed!"
else
  log_running "  libffi-dev  not yet installed - installing..."
  sudo apt -y install libffi-dev
  if [ $? -eq 0 ]; then
    log_done "    libffi-dev  successfully installed!"
  else
    die "    Could not install libffi-dev  - please check the logs above"
  fi
fi


log_running "Checking for libxml2-dev ..."
dpkg -l libxml2-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libxml2-dev  already installed!"
else
  log_running "  libxml2-dev  not yet installed - installing..."
  sudo apt -y install libxml2-dev
  if [ $? -eq 0 ]; then
    log_done "    libxml2-dev  successfully installed!"
  else
    die "    Could not install libxml2-dev  - please check the logs above"
  fi
fi


log_running "Checking for libxmlsec1-dev ..."
dpkg -l libxmlsec1-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libxmlsec1-dev  already installed!"
else
  log_running "  libxmlsec1-dev  not yet installed - installing..."
  sudo apt -y install libxmlsec1-dev
  if [ $? -eq 0 ]; then
    log_done "    libxmlsec1-dev  successfully installed!"
  else
    die "    Could not install libxmlsec1-dev  - please check the logs above"
  fi
fi

log_running "Checking for php7.2-fpm ..."
dpkg -l php7.2-fpm 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  php7.2-fpm  already installed!"
else
  log_running "  php7.2-fpm  not yet installed - installing..."
  sudo apt -y install php7.2-fpm
  if [ $? -eq 0 ]; then
    log_done "    php7.2-fpm  successfully installed!"
  else
    die "    Could not install php7.2-fpm  - please check the logs above"
  fi
fi

log_running "Checking for libx11-6:armhf ..."
dpkg -l libx11-6:armhf 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libx11-6:armhf  already installed!"
else
  log_running "  libx11-6:armhf  not yet installed - installing..."
  sudo apt -y install libx11-6:armhf
  if [ $? -eq 0 ]; then
    log_done "    libx11-6:armhf  successfully installed!"
  else
    die "    Could not install libx11-6:armhf  - please check the logs above"
  fi
fi

log_running "Checking for libasound2:armhf ..."
dpkg -l libasound2:armhf 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libasound2:armhf  already installed!"
else
  log_running "  libasound2:armhf  not yet installed - installing..."
  sudo apt -y install libasound2:armhf
  if [ $? -eq 0 ]; then
    log_done "    libasound2:armhf  successfully installed!"
  else
    die "    Could not install libasound2:armhf  - please check the logs above"
  fi
fi

log_running "Checking for ntp..."
dpkg -l ntp  2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  ntp already installed!"
else
  log_running "  ntp not yet installed - installing..."
  sudo apt -y install ntp
  if [ $? -eq 0 ]; then
    log_done "    ntp successfully installed!"
  else
    die "    Could not install ntp - please check the logs above"
  fi
fi

log_running "Checking for cmake..."
dpkg -l cmake 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  cmake already installed!"
else
  log_running "  cmake not yet installed - installing..."
  sudo apt -y install cmake
  if [ $? -eq 0 ]; then
    log_done "    cmake successfully installed!"
  else
    die "    Could not install cmake - please check the logs above"
  fi
fi


log_running "Checking for sox..."
dpkg -l sox 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  sox already installed!"
else
  log_running "  sox not yet installed - installing..."
  sudo apt -y install sox
  if [ $? -eq 0 ]; then
    log_done "    sox successfully installed!"
  else
    die "    Could not install sox - please check the logs above"
  fi
fi


log_running "Checking for at..."
dpkg -l at 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  at already installed!"
else
  log_running "  at not yet installed - installing..."
  sudo apt -y install at
  if [ $? -eq 0 ]; then
    log_done "    at successfully installed!"
  else
    die "    Could not install at - please check the logs above"
  fi
fi


log_running "Checking for bc..."
dpkg -l bc 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  bc already installed!"
else
  log_running "  bc not yet installed - installing..."
  sudo apt -y install bc
  if [ $? -eq 0 ]; then
    log_done "    bc successfully installed!"
  else
    die "    Could not install bc - please check the logs above"
  fi
fi


log_running "Checking for nginx..."
dpkg -l nginx 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  nginx already installed!"
else
  log_running "  nginx not yet installed - installing..."
  sudo apt -y install nginx
  if [ $? -eq 0 ]; then
    log_done "    nginx successfully installed!"
  else
    die "    Could not install nginx - please check the logs above"
  fi
fi


log_running "Checking for libncurses5-dev..."
dpkg -l libncurses5-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libncurses5-dev already installed!"
else
  log_running "  libncurses5-dev not yet installed - installing..."
  sudo apt -y install libncurses5-dev
  if [ $? -eq 0 ]; then
    log_done "    libncurses5-dev successfully installed!"
  else
    die "    Could not install libncurses5-dev - please check the logs above"
  fi
fi


log_running "Checking for libncursesw5-dev..."
dpkg -l libncursesw5-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libncursesw5-dev already installed!"
else
  log_running "  libncursesw5-dev not yet installed - installing..."
  sudo apt -y install libncursesw5-dev
  if [ $? -eq 0 ]; then
    log_done "    libncursesw5-dev successfully installed!"
  else
    die "    Could not install libncursesw5-dev - please check the logs above"
  fi
fi


log_running "Checking for libatlas-base-dev ..."
dpkg -l libatlas-base-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libatlas-base-dev already installed!"
else
  log_running "  libatlas-base-dev not yet installed - installing..."
  sudo apt -y install libatlas-base-dev
  if [ $? -eq 0 ]; then
    log_done "    libatlas-base-dev successfully installed!"
  else
    die "    Could not install libatlas-base-dev - please check the logs above"
  fi
fi


log_running "Checking for python3-pip..."
dpkg -l python3-pip 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  python3-pip already installed!"
else
  log_running "  python3-pip not yet installed - installing..."
  sudo apt -y install python3-pip
  if [ $? -eq 0 ]; then
    log_done "    python3-pip successfully installed!"
  else
    die "    Could not install python3-pip - please check the logs above"
  fi
fi


log_running "Checking for imagemagick..."
dpkg -l imagemagick  2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  imagemagick already installed!"
else
  log_running "  imagemagick not yet installed - installing..."
  sudo apt -y install imagemagick
  if [ $? -eq 0 ]; then
    log_done "    imagemagick successfully installed!"
  else
    die "    Could not install imagemagick - please check the logs above"
  fi
fi

log_running "Checking for libxft-dev..."
dpkg -l libxft-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libxft-dev already installed!"
else
  log_running "  libxft-dev not yet installed - installing..."
  sudo apt -y install libxft-dev
  if [ $? -eq 0 ]; then
    log_done "    libxft-dev successfully installed!"
  else
    die "    Could not install libxft-dev - please check the logs above"
  fi
fi

log_running "Checking for libjpeg9..."
dpkg -l libjpeg9  2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libjpeg9 already installed!"
else
  log_running "  libjpeg9 not yet installed - installing..."
  sudo apt -y install libjpeg9
  if [ $? -eq 0 ]; then
    log_done "    libjpeg9 successfully installed!"
  else
    die "    Could not install libjpeg9 - please check the logs above"
  fi
fi

log_running "Checking for libjpeg9-dev..."
dpkg -l libjpeg9-dev 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libjpeg9-dev already installed!"
else
  log_running "  libjpeg9-dev not yet installed - installing..."
  sudo apt -y install libjpeg9-dev
  if [ $? -eq 0 ]; then
    log_done "    libjpeg9-dev successfully installed!"
  else
    die "    Could not install libjpeg9-dev - please check the logs above"
  fi
fi

log_running "Checking for socat..."
dpkg -l socat 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  socat already installed!"
else
  log_running "  socat not yet installed - installing..."
  sudo apt -y install socat
  if [ $? -eq 0 ]; then
    log_done "    socat successfully installed!"
  else
    die "    Could not install socat - please check the logs above"
  fi
fi

log_running "Checking for sqlite3..."
dpkg -l sqlite3 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  sqlite3 already installed!"
else
  log_running "  sqlite3 not yet installed - installing..."
  sudo apt -y install sqlite3
  if [ $? -eq 0 ]; then
    log_done "    sqlite3 successfully installed!"
  else
    die "    Could not install sqlite3 - please check the logs above"
  fi
fi

log_running "Checking for libgfortran5..."
dpkg -l libgfortran5 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  log_done "  libgfortran5 already installed!"
else
  log_running "  libgfortran5 not yet installed - installing..."
  sudo apt -y install libgfortran5
  if [ $? -eq 0 ]; then
    log_done "    libgfortran5 successfully installed!"
  else
    die "    Could not install libgfortran5 - please check the logs above"
  fi
fi





sudo rm -rf predict_2.2.3-4build2_arm64.deb

log_running "  Checking for update..."
sudo apt -y update 

log_running "  Checking for upgrade..."
sudo apt -y upgrade 

log_running "  Checking for autoremove..."
sudo apt -y autoremove

log_running "  fix-broken install..."
sudo apt -y --fix-broken install

if [ $install_type == 'install' ]; then
  log_running "Installing library Done."
  log_running "please run $./install_and_upgrade.sh"
fi
if [ $install_type == 'install' ]; then
  log_running "It looks like this is a fresh install of the tooling for captures."
  log_running "If you've never had the software tools installed previously (e.g. if you've"
  log_running "not installed the original raspberry-noaa repo content), you likely need to"
  log_running "restart your device. Please do this to rule out any potential issues in the"
  log_running "software and libraries that have been installed."
fi
