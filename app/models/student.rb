class Student < ApplicationRecord
    belongs_to :instructor
    validates :age, numericality: {greater_than: 18, message: "must be greater than 18."}

end
