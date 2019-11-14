class DefaultToUpvoteAndDownvote < ActiveRecord::Migration[6.0]
  def change
    change_column :votes, :upvotes, :integer, default: 0
    change_column :votes, :downvotes, :integer, default: 0
  end
end
