class MakeChangesToVotes < ActiveRecord::Migration[6.0]
  def change
    remove_column :votes, :upvotes, :integer
    remove_column :votes, :downvotes, :integer
    add_column :votes, :value, :integer
  end
end
