#!/bin/bash
echo "[*] Killing broken VMware clipboard processes..."
sudo pkill -f vmware-user
sudo pkill -f vmusr

echo "[*] Restarting the VMware guest service engine..."
sudo systemctl restart open-vm-tools.service

echo "[*] Launching user clipboard listener..."
vmware-user-suid-wrapper >/dev/null 2>&1 &

echo "[✔] Clipboard fixed successfully! Try copying now."
