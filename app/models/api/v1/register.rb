class Api::V1::Register < ApplicationRecord
  validates :first_name, :last_name, :gender, :birth_date,
  :email, :description, :address, :country, :department, :city, presence: true

  validate :validate_legal_age
  before_save :validate_legal_age

  private

  def validate_legal_age
    if self.birth_date.present? && self.birth_date.to_f > 18.years.ago.to_f
      self.errors.add(:birth_date, 'You should be over 18 years old.')
    end
  end
end
