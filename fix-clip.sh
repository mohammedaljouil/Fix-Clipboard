#!/bin/bash

echo "[*] Checking for open-vm-tools..."
# If the service file doesn't exist, install it automatically
if ! systemctl list-unit-files | grep -q "open-vm-tools.service"; then
    echo "[!] Service missing. Installing open-vm-tools-desktop now..."
    sudo apt update && sudo apt install -y open-vm-tools-desktop
fi

echo "[*] Killing broken VMware clipboard processes..."
sudo pkill -f vmware-user
sudo pkill -f vmusr

echo "[*] Restarting the VMware guest service engine..."
sudo systemctl restart open-vm-tools.service

echo "[*] Launching user clipboard listener..."
vmware-user-suid-wrapper >/dev/null 2>&1 &

echo "[✔] Clipboard fixed successfully! Try copying now."
