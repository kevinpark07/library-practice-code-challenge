class Student < ApplicationRecord
    has_many :libraries, dependent: :destroy
    has_many :books, through: :libraries
    validates :name, presence: true
    validates :age, numericality: { greater_than_or_equal_to: 14, less_than_or_equal_to: 18 }
    validates :grade, numericality: { greater_than_or_equal_to: 9, less_than_or_equal_to: 12 }
end
