require_relative 'alarm'

alarm = Alarm.new

while(alarm.verify(Time.now) == false)
  puts "zZzzZzŹzzZz"
  sleep(10)
end

Alarm::SYSTEM_COMMANDS.each do |command|
  if command == 'wait'
    sleep(5)
  else
    system(command)
  end
end
