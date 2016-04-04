class Alarm
  WAKE_HOUR = 7
  WAKE_MINUTES = 0
  SYSTEM_COMMANDS = ['banshee --play', 'wait', 'banshee --play']

  attr_accessor :status

  def initialize
    self.status = 0
  end

  def verify(date)
    now = Time.now
    if now.hour == WAKE_HOUR and now.min == WAKE_MINUTES
      puts "ITS WAKE TIME, TÁ TRANQUILO, TÀ FAVORAVEL"
      self.status = 1
      true
    else
      false
    end
  end
end
