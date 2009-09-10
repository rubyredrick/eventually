Given /^an event "([^\"]*)" starting "([^\"]*)" and ending "([^\"]*)"$/ do |summary, start_string, end_string|
  Event.create!(
    :summary => summary,
    :starts_at => DateTime.parse(start_string),
    :ends_at => DateTime.parse(end_string)
  )
end