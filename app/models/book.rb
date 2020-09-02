class Book < ApplicationRecord
    has_many :libraries
    has_many :students, through: :libraries
end
