class Event < ActiveRecord::Base
  include Eventually::Event
end