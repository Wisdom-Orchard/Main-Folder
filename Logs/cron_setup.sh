#!/bin/bash
# Scheduled Tasks for MJ

# Daily Backup - 2:00 AM UTC
cd /root/.openclaw/workspace/Main-Folder
git add -A
git commit -m "Daily backup $(date +%Y-%m-%d)"
git push >> /root/.openclaw/workspace/Main-Folder/Logs/backup.log 2>&1

# Note: Cron daemon not available in this environment
# MJ's schedule (in their timezone PDT):
# - Daily backup: 2AM UTC (6PM PDT previous day)
# - Weekly summary: Friday 5PM EST = 2PM PDT
# - Reminders: Mon/Wed/Fri 9AM EST = 6AM PDT