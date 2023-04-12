class Staff < ApplicationRecord
    has_many :sale

    validates_presence_of :staff_name, :gender, :age, :address, :date_of_birth
    
    validate :year_up_to_present
    def year_up_to_present
        errors.add(:date_of_birth, 'must not be in the future') if date_of_birth > Time.now.year
    end
end
