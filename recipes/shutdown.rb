# Testing for OpsWorks
# Shutdowns an OpsWorks Instance 30 minutes from being executed.

deathhour = (10 + Random.rand(1)).to_s
deathminute = (0 + Random.rand(59)).to_s

cron = `cat <(crontab -l) <(echo "#{deathminute} #{deathhour} * * * /sbin/shutdown -P now") | crontab -`
