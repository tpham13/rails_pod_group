class Student < ApplicationRecord 
    validates :name, :grade, :email, presence: true 
    validates :email, uniqueness: true 

    has_many :courses 
    has_many :professors, through: :courses
end