class Student < ApplicationRecord 
    validates :name, :grade, :email, presence: true 
    validates :email, uniqueness: true 
end