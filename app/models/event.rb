class Event < ActiveRecord::Base
  include Eventually::Event
  before_save :serialize_ical_event
end