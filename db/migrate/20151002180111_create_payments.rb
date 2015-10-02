class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to :member
      t.decimal :amount
      t.date :date
      t.string :receipt_number
      t.string :mode_of_payment

      t.timestamps null: false
    end

    add_foreign_key :payments, :members
  end
end
