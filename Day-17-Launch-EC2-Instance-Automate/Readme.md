### Day 17 | DevOps Challenge — Automating EC2 Creation with Shell Scripting

Today, I explored **cloud automation with AWS** using a shell script. This was my first attempt at provisioning cloud resources through automation, and it gave me great insights into how DevOps engineers approach infrastructure tasks.

**What I Did:**

1. **Created a Basic EC2 Launch Script**
   - Set up essential parameters like AMI ID, instance type, key pair, security group, and subnet ID.
   - Wrote the script to launch an EC2 instance using the `aws ec2 run-instances` command.

2. **Implemented Basic Error Handling**
   - Checked the exit status of the AWS CLI command after execution.
   - Displayed appropriate messages if the EC2 creation failed or succeeded.
   - Ensured the script exits gracefully if any step encounters an issue.

3. **Added Logging**
   - Captured command outputs and errors in a log file.
   - This helps in debugging and tracking the execution steps, which is essential for maintaining infrastructure automation scripts.

4. **Execution Steps**
   - Run the script in a terminal after ensuring AWS CLI is configured.
   - Observe logs and messages to verify if the EC2 instance was created successfully.
   - The script handles simple failure scenarios and provides clear feedback.

**Key Learnings:**
- Automating cloud tasks reduces manual effort and errors.
- Even a simple shell script can make workflows reproducible and consistent.
- Basic logging and error handling are crucial for tracking automation tasks.
- This is the first step towards building **robust, modular, and production-ready automation scripts** for infrastructure provisioning.
