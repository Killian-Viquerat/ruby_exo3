class Room < ActiveRecord::Base
    has_many :reservation_items, as: :reservable
    has_many :group_rights, as: :reservable
end