class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :email
      t.string :token

      t.timestamps
    end
  end
end
