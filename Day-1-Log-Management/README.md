# Day 1 | DevOps Challenge — Taking First Practical Steps

Today, instead of just learning Linux commands in isolation, I decided to apply them to a real-world scenario.

I focused on a common issue in production environments — log files growing uncontrollably and filling up disk space. Using only the basic Linux commands I’ve learned so far, I simulated how a DevOps engineer might manually manage and clean logs on a server.

## What I did:

1. Navigated to the log directory using cd, confirmed location with pwd, and listed files using ls
2. Created a folder structure using mkdir (e.g., archive/sep-logs) to organize old logs
3. Moved .log files into the archive folder using mv
4. Backed up critical logs like error.log using cp
5. Viewed logs using cat, less, and more
6. Used head and tail to quickly inspect sections of larger logs
7. Deleted unnecessary logs using rm and removed empty folders with rmdir
8. Created new empty log files using touch for future logs

Even with just the basics, this exercise gave me a practical understanding of how Linux commands are used for real server maintenance tasks.

**Next Steps:** Move on to analyzing logs in real-time using syslog (Day 2).
