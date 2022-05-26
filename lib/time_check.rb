=begin

require 'time'

def time_fed
  @time_fed = if @user_input == 'feed'
                return Time.now
              else
                return nil
              end
end

def fed_check
  t1 = @time_fed
  t2 = @start_time
  

end 

require 'date'

def calc_seconds(time_string)
  date_time = DateTime.parse(time_string)
  hour_part = date_time.hour * 60 * 60
  minute_part = date_time.minute * 60
  second_part = date_time.second
  hour_part + minute_part + second_part
end

=end