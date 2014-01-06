# Testing for OpsWorks
# Shutdowns an OpsWorks Instance 30 minutes from being executed.

#deathhour = (10 + Random.rand(1)).to_s
#deathminute = (0 + Random.rand(59)).to_s
#{deathminute}

dhour = deathhour #(10 + rand(0,2)).to_s
dminute = deathminute #(0 + rand(0,59)).to_s

cron = `( crontab -l ;  echo "#{dhour} #{dminute} * * * /sbin/shutdown -P now" ) | crontab`
