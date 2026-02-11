# Architecture Explanation

User → Internet → Internet Gateway → Public Subnet → EC2 Instance → Nginx Service

Key Points:
- Public subnet associated with route table containing IGW route (0.0.0.0/0)
- Security group allows HTTP and SSH traffic
- Instance must have public IP for internet access
