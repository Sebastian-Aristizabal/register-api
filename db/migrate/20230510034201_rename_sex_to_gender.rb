class RenameSexToGender < ActiveRecord::Migration[7.0]
  def change
    rename_column :api_v1_registers, :sex, :gender
  end
end
