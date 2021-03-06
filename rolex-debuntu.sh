echo "Welcome to RoLeX! Do you want to install Roblox? [y/N]"
read
if [ $REPLY = y ]
then
  set -e
  echo "Step 1: Update Repositories"
  sudo apt update
  echo "Step 2: Install Dependencies"
  sudo apt install -y git python3-pip python3-setuptools python3-wheel python3-dev pkg-config libcairo2-dev gtk-update-icon-cache p7zip-full desktop-file-utils xdg-utils libgirepository1.0-dev gir1.2-gtk-3.0
  echo "Step 3a: Install Wine"
  sudo apt install --install-recommends wine-development
  echo "Step 3b: Install Wine"
  wget https://pastebin.com/raw/5SeVb005 -O /tmp/grapejuice-wine-tkg.py
  python3 /tmp/grapejuice-wine-tkg.py
  echo "Step 4a: Download Grapejuice"
  git clone https://gitlab.com/brinkervii/grapejuice.git /tmp/grapejuice
  echo "Step 4b: Install Grapejuice"
  cd /tmp/grapejuice
  python3 ./install.py
  else
  exit
  fi
