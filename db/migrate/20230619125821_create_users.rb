class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :identity
      t.string :phone_number

      t.timestamps
    end
  end
end
