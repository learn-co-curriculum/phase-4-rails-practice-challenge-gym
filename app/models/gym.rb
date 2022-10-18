class Gym < ApplicationRecord
    has_many :memberships
    has_many :clients, through: :memberships
end
