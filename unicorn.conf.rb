# unicorn.conf.rb

# Set the working directory to your application
working_directory "/fitnesstracker"

# Set the path to Unicorn's PID file
pid "/fitnesstracker/tmp/unicorn.pid"

# Specify the number of worker processes
worker_processes 4

# Set the path to Unicorn's socket
listen "/fitnesstracker/tmp/unicorn.sock", backlog: 64

# Set the path to Unicorn's log files
stderr_path "/fitnesstracker/log/unicorn.stderr.log"
stdout_path "/fitnesstracker/log/unicorn.stdout.log"

