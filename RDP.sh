sudo useradd -m FRM
sudo adduser FRM sudo
sudo passwd
printf "halah \n" >&2
{
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb -P /tmp
sudo apt -y install /tmp/chrome-remote-desktop_current_amd64.deb
sudo apt -y install xfce4
sudo apt -y install firefox
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
apt update
apt -y install anydesk
sudo adduser FRM chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Completed " >&2 ||
printf "\nError Occured " >&2
printf '\nhttps://remotedesktop.google.com/headless \n'
su - FRM -c """DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AY0e-g5PwCSygyAkMSgR3Y0f5vOSm9Ya-rBO4YFPUy9J7S3cf8gvxTCd-dbpq8TruAK5DA" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)"""
