class User < ActiveRecord::Base
    has_many :created_events, class_name: "Event", foreign_key: :created_by_id #all events created by the next user
    has_many :attributated_events, class_name: "Event", foreign_key: :created_for_id # all events created for the next user
    has_many :event_participants # all events where the user participate
    has_many :material_responsibles # user has a specific materials
    has_many :group_participants
    has_many :created_reservations, class_name: "reservations", foreign_key: :created_by_id
    has_many :attributated_reservations, class_name: "reservations", foreign_key: :created_for_id
end