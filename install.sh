#!/bin/sh
# Install scripts to /opt/bt_state
# Copy services to /etc/systemd/system
# Enable services

echo "##### Install script for BT_State (Save/Restore) ######"
echo "For some actions root privileges are required."
echo "\n"
install_dir=/opt/bt_state
service_dir=/etc/systemd/system

echo "Create install dir $install_dir"
sudo mkdir -p $install_dir
echo "Copying files..."
sudo cp -R . $install_dir
echo "Done."

echo "Copy service files to $service_dir"
sudo cp -R $install_dir/services/. $service_dir
echo "Done."

echo "Enabling services..."
sudo systemctl enable bt_save
sudo systemctl enable bt_restore
echo "Done."

echo "\n"
echo "A system reboot is required to finish installation"
