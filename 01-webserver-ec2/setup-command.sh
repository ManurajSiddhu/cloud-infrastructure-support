# 2️⃣ setup-commands.sh

#shebang
#!/bin/bash

# Update system
sudo yum update -y

# Install nginx
sudo yum install nginx -y

# Start nginx
sudo systemctl start nginx

# Enable nginx on boot
sudo systemctl enable nginx

# Check status
sudo systemctl status nginx
