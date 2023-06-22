class Author < ApplicationRecord
    # adding validations
    validates :name, presence: true
    validates :name, uniquness: true
    validates :phone_number, length: {is: 10}
end
