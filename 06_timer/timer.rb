class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    timer_seconds = "%.2i" % (seconds % 60)
    timer_minutes = seconds/60
    if timer_minutes > 60
      timer_minutes = "%.2i" % (timer_minutes % 60)
    else
      timer_minutes = "%.2i" % timer_minutes
    end
    timer_hours = "%.2i" % (seconds/3600)
    if seconds == 0
      "00:00:00"
    elsif seconds < 60
      "00:00:#{timer_seconds}"
    elsif seconds < 3600
      "00:#{timer_minutes}:#{timer_seconds}"
    elsif seconds < 216000
      "#{timer_hours}:#{timer_minutes}:#{timer_seconds}"
    end
  end
end