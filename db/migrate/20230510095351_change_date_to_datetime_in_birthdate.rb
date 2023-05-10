class ChangeDateToDatetimeInBirthdate < ActiveRecord::Migration[7.0]
  def change
    change_column :api_v1_registers, :birth_date, :datetime
  end
end
