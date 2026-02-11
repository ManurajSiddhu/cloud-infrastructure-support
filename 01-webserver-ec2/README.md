# Linux Web Server Deployment on AWS EC2

## 📌 Project Summary

Deployed a Linux-based Nginx web server on AWS EC2 and configured networking, security, and automation to make the application publicly accessible.

The project focuses on infrastructure provisioning, service management, and troubleshooting in a cloud environment.

---

## 🏗 Architecture Overview

Components Used:

- AWS EC2 (Amazon Linux 2)
- Public Subnet
- Internet Gateway
- Route Table (0.0.0.0/0 → IGW)
- Security Group (SSH + HTTP)
- Nginx Web Server

Traffic Flow:

User → Internet → Internet Gateway → Public Subnet → EC2 → Nginx

---

## 🚀 Implementation Steps

1. Launched EC2 instance with public IP enabled.
2. use AMI - Red Hat Enterprise Linux 10 (HVM), SSD Volume Type.
3. use instance type - t3 small
4. Configured Security Group:
   - SSH (22) – Restricted to my IP
   - HTTP (80) – Open for public access
5. Connected via SSH.
6. Installed Nginx using package manager.
7. Started and enabled service using systemctl.
8. Verified application accessibility via public IP.

---

## ⚙ Automation

Created a Bash script (`setup-commands.sh`) to automate:

- System update
- Nginx installation
- Service start
- Service enable on boot

Also tested automation using EC2 User Data during instance launch.

This reduced manual configuration steps and ensured consistent setup.

---

## 🔎 Troubleshooting Performed

### 1️⃣ Website Not Accessible
- Verified Security Group inbound rules.
- Checked route table association.
- Confirmed public IP assignment.

Root Cause: HTTP port not allowed.

Resolution: Updated Security Group rule.

---

### 2️⃣ Service Not Running
Command used:
systemctl status nginx

Root Cause: Service not started.

Resolution:
systemctl start nginx

---

### 3️⃣ Log Analysis

Checked logs using:
- journalctl -xe
- /var/log/messages

Validated service startup and error messages.

---

## 🛠 Skills Demonstrated

- EC2 provisioning
- Linux package management
- Service management (systemctl)
- Security Group configuration
- Basic cloud networking
- Log inspection
- Troubleshooting methodology
- Basic automation using Bash

---
