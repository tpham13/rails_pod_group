class Course < ApplicationRecord
    validates :name, :subject, presence: true 
    validates :subject, uniqueness: true 

    belongs_to :student 
    belongs_to :professor
end 