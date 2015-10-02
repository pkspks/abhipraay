class ChangePaymentsColumnsNonNullable < ActiveRecord::Migration
  def change
    change_column_null :payments, :member_id, false
    change_column_null :payments, :amount, false
    change_column_null :payments, :date, false
    change_column_null :payments, :receipt_number, false
    change_column_null :payments, :mode_of_payment, false
  end
end
