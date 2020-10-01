class Course < ApplicationRecord
    validates :name, :subject, presence: true 
    validates :subject, uniqueness: true
end 