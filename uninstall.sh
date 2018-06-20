#!/bin/sh
# Uninstall script
# Disable services
# Remove services from /etc/systemd/system
# Remove files from /opt/bt_state

echo "##### Uninstall script for BT_State (Save/Restore) ######"
echo "For some actions root privileges are required."
echo "\n"
install_dir=/opt/bt_state
service_dir=/etc/systemd/system

echo "Disable services..."
sudo systemctl disable bt_save
sudo systemctl disable bt_restore
echo "Done."

echo "Remove service files from $service_dir"
sudo rm $service_dir/bt_save.service
sudo rm $service_dir/bt_restore.service
echo "Done."

echo "Remove all files from installation path $install_dir"
sudo rm -R $install_dir
echo "Done."
echo "Uninstallation complete."
