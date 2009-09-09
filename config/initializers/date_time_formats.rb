Time::DATE_FORMATS[:mdy] = "%m/%d/%Y"
Time::DATE_FORMATS[:at] = lambda do |time|
  time.strftime("%l:%M%p").sub(/AM/, 'am').sub(/PM/, 'pm').gsub(/\s\s+?/, ' ')
end