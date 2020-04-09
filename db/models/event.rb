class Event < ActiveRecord::Base
    has_many :event_participants
    belongs_to :created_by, class_name: "User"
    belongs_to :created_for, class_name: "User"
end