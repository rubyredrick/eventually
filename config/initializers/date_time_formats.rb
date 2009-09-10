Time::DATE_FORMATS[:mdy] = "%m/%d/%Y"
Time::DATE_FORMATS[:at] = lambda do |time|
  time.strftime("%l:%M%p").downcase.strip.gsub(/\s{2,}/, ' ')
end