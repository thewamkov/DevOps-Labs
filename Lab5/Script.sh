
# Create test folders
mkdir /var/folder{1,2}

# Copy service file
cat /home/vagrant/file-mover.service > /etc/systemd/system/file-mover.service

# Reload all daemons
systemctl daemon-reload

# Run the daemon
systemctl start file-mover.service

# Enable autostart
systemctl enable file-mover.service

# Change directory to cron.d
cd /etc/cron.d

