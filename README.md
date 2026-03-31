OSS Audit Project — Linux Kernel

Name: Arya Phutane
Roll Number: 24BCE11532
Course: Open Source Software
the Software
For this audit, I chose the Linux Kernel

Scripts Description
1. System Identity Report
Displays system info like OS, kernel, uptime.

2. Package Inspector
Checks if packages (firefox, linux, git) are installed.

3. Disk Auditor
Shows directory permissions and size.

4. Log Analyzer
Analyzes logs using keyword search.

5. Manifesto Generator
Creates an open-source statement.


### Step 4: Run the Scripts  

```bash
./script1_system_identity.sh
./script2_package_inspector.sh apache2
./script3_disk_permission_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
# On Kali Linux:
./script4_log_analyzer.sh /var/log/auth.log error
./script5_manifesto_generator.sh

Dependencies
Bash
grep, awk, sed, df, du
apt (for Debian-based systems)
