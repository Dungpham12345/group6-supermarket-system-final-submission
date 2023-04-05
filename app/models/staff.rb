class Staff < ApplicationRecord
    has_many:Sale

    validates_presence_of:staff_ID, :staff_name, :gender, :age, :address, :date_of_birth
    validates_uniqueness_of:staff_ID
    validates_numericality_of:staff_ID 

    validate :year_up_to_present
    def year_up_to_present
        errors.add(:date_of_birth, 'must not be in the future') if date_of_birth > Time.now.year
    end
    validate :staff_must_larger_18
    def staff_must_larger_18
        errors.add(:age, "You're not old enough.") if age < 18
    end
end
