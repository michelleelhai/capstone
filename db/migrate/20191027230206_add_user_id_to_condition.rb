class AddUserIdToCondition < ActiveRecord::Migration[6.0]
  def change
    add_column :conditions, :user_id, :integer
  end
end
