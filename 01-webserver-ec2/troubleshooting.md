# Troubleshooting Scenarios

## Issue 1: Website Not Loading

### Symptoms
Browser unable to connect.

### Checks Performed
- Verified security group inbound rules
- Confirmed port 80 open
- Checked if instance has public IP
- Verified route table has Internet Gateway

### Root Cause
Port 80 was not allowed in security group.

### Resolution
Updated inbound rule to allow HTTP traffic.

---

## Issue 2: Nginx Service Not Running

### Command Used
sudo systemctl status nginx

### Root Cause
Service was not started.

### Resolution
sudo systemctl start nginx

---

## Issue 3: Permission Denied While Installing

### Root Cause
Commands executed without sudo.

### Resolution
Used sudo privileges.
