class CreateApiV1Registers < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_registers do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.date :birth_date
      t.string :email
      t.text :description
      t.string :address
      t.string :country
      t.string :department
      t.string :city
      t.string :apartment

      t.timestamps
    end
  end
end
