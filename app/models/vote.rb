class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :product
  def upvote
    votes = Vote.all
    upvotes = 0
    votes.each do |vote|
      upvotes = vote.upvotes + upvotes
    end
    return upvotes
  end
  def downvote
    votes = Vote.all
    downvotes = 0
    votes.each do |vote|
      downvotes = vote.downvotes + downvotes
    end
    return downvotes
  end
end

