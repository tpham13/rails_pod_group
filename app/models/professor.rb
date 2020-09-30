class Professor < ApplicationRecord
    validates :name, presence: true
end