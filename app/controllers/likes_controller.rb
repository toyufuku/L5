class LikesController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    user = User.find_by(uid: current_user)
    user.like_tweets << tweet
    redirect_to root_path
  end
  
  def like(user)
    likes.create(user_id: user.id)
  end
  
  def unlike(user)
    likes.find_by(user_id: user.id).destroy
  end
  
  def liked?(user)
    like_users.inckude?(user)
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    user = User.find_by(uid: current_user)
    tweet.likes.find_by(user_id: user.id).destroy
    redirect_to root_path
  end
end
