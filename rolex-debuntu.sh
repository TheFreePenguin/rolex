echo "Step 1: Cloning wine-tkg-git"
git clone https://github.com/Frogging-Family/wine-tkg-git.git
echo "Step 2: Entering cloned directory"
cd wine-tkg-git
echo "Step 3: Downloading patch"
curl https://raw.githubusercontent.com/e666666/robloxWineBuildGuide/main/roblox-wine-staging-v2.patch --output roblox-wine-staging-v2.patch
echo "Step 4: Applying patch"
git apply roblox-wine-staging-v2.patch
echo "Step 5: Entering source dir"
cd wine-tkg-git
echo "Step 6: Edit config file? [y/N]"
read
if [ $REPLY = y ]
then
nano customization.cfg
fi
echo "Step 7: Installing dependencies"
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt upgrade && sudo apt install autoconf libxi-dev libvulkan-dev
echo "Step 8: Compiling Wine"
./non-makepkg-build.sh
echo "Step 9: 
