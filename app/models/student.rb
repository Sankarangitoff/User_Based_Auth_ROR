class Student < ApplicationRecord

  belongs_to :teacher
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :roll_number, presence: true, uniqueness: true
  validates :phone_number, presence: true
end
