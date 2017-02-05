class CreateMoneyBags < ActiveRecord::Migration[5.0]
  def change
    create_table :money_bags do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :credit
      t.integer :expenses
      t.integer :remaining_amt
      t.timestamps
    end
  end
end
