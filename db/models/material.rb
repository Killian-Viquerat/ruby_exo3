class Material < ActiveRecord::Base
    has_many :material_responsibles
    has_many :reservation_items, as: :reservable
    has_many :group_rights, as: :reservable
end