class Reservation < ActiveRecord::Base
    belongs_to :created_by, class_name: "User"
    belongs_to :created_for, class_name: "User"
    has_many :reservation_items
end