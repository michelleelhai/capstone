class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :downvotes
      t.integer :upvotes

      t.timestamps
    end
  end
end
