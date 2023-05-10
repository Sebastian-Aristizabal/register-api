class Api::V1::Register < ApplicationRecord
  validates :first_name, :last_name, :gender, :birth_date,
  :email, :description, :address, :country, :department, :city, presence: true


  private

  def validate_age
    if birth_date.present? && birth_date > 18.years.ago.to_d
        errors.add(:birth_date, 'You should be over 18 years old.')
    end
  end
end
