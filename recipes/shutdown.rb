# Testing for OpsWorks
# Shutdowns an OpsWorks Instance 30 minutes from being executed.

deathtime = (1 + Random.new(10)).to_s

shutdown = `sudo shutdown -P #{deathtime}`