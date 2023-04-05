class Membership < ApplicationRecord
    validates_presence_of:mem_ID, :mem_name, :gender, :date_of_birth, :contact, :address
    validates_uniqueness_of:mem_ID, :contact
    validates_numericality_of:mem_ID

    validate :year_up_to_present
    def year_up_to_present
        errors.add(:date_of_birth, ' must not be in the future') if date_of_birth > Time.now.year
    end

end
