class Group < ActiveRecord::Base
    has_many :group_participants
    has_many :group_rights
end