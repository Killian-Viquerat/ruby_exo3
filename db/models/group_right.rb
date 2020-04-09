class GroupRight < ActiveRecord::Base
    belongs_to :group
    belongs_to :reservable, polymorphic: true
end