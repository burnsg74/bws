# What is a Cron job

A cron job in Linux is a scheduled task that runs automatically at specified intervals. The cron daemon, crond, is responsible for executing these tasks. Cron jobs are defined in a file called the crontab (cron table), which contains the schedule and the commands to be executed.

**Crontab Syntax**

A typical entry in a crontab file follows this format:
```
* * * * * command_to_execute
-  - - - -
| | | | |
| | | | +---- Day of the week (0 - 7) (Sunday=0 or 7)
| | | +------ Month (1 - 12)
| | +-------- Day of the month (1 - 31)
| +---------- Hour (0 - 23)
+------------ Minute (0 - 59)

```
