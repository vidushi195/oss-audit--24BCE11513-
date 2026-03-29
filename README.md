OSS Capstone Project: The Open Source Audit

Student Name: Vidushi Agrawal 


Registration Number: 24BCE11513


Course: Open Source Software (Units 1-5) 


Chosen Software: VLC Media Player 

Project Overview
This repository contains the practical component of the Open Source Software Capstone Project. It includes five shell scripts designed to demonstrate Linux administration skills, automation, and an understanding of the FOSS philosophy.

Shell Scripts Description
1. System Identity Report (script1.sh)

Purpose: Provides a welcome screen showing the Linux distribution, kernel version, and project details.


Key Concepts: Variables, command substitution, and output formatting.

2. FOSS Package Inspector (script2.sh)

Purpose: Checks if VLC is installed, retrieves its version, and prints a philosophical note about the software.


Key Concepts: if-then-else, case statements, and package management commands (dpkg/rpm).

3. Disk and Permission Auditor (script3.sh)

Purpose: Loops through system directories to report disk usage and security permissions, including the VLC config path.


Key Concepts: for loops, du, ls -ld, and string manipulation.

4. Log File Analyzer (script4.sh)

Purpose: Scans a specified log file to count occurrences of a keyword (e.g., "vlc" or "error").


Key Concepts: while-read loops, positional parameters, and counters.

5. Open Source Manifesto Generator (script5.sh)

Purpose: An interactive tool that generates a personalized philosophy statement based on user input.


Key Concepts: User input (read), file redirection (>>), and string concatenation.

Instructions to Run on Linux
Follow these steps to execute the scripts on your Linux machine or VM:

Clone the Repository:

Bash
git clone https://github.com/[your-username]/oss-audit-24BSA10036.git
cd oss-audit-24BCE11513
Grant Execution Permissions:

Bash
chmod +x *.sh
Run the Scripts:

Script 1: ./script1.sh

Script 2: ./script2.sh

Script 3: ./script3.sh


Script 4: ./script4.sh /var/log/syslog vlc (Note: requires a valid log file path as an argument).

Script 5: ./script5.sh

Dependencies

Operating System: Any Linux distribution (Ubuntu/Debian recommended).


Shell: Bash (Bourne Again Shell).


Utilities: awk, grep, du, and standard package managers (apt or rpm).
