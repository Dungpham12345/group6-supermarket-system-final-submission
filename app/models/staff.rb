class Staff < ApplicationRecord
    has_many :sales

    validates_presence_of :staff_name, :gender, :age, :address, :date_of_birth
    
    validates :date_of_birth, presence: true
    validate :date_of_birth_cannot_be_in_the_future

    def date_of_birth_cannot_be_in_the_future
        if date_of_birth.present? && date_of_birth > Date.today
        errors.add(:date_of_birth, "can't be in the future")
        end
    end

end
