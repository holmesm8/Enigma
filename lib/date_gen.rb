require 'date'

class DateGen
  def self.current_date
    Date.today.strftime("%m%d%y")
  end
end
