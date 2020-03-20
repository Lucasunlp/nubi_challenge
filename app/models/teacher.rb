class Teacher < ApplicationRecord
  has_many :courses
  validates :name, :surname, :birth_date, :address,
            :email, :phone, :identification_number, presence: true
end
