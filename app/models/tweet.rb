class Tweet < ApplicationRecord
    has_many :tweets
    has_many :likes, dependent: :destroy
    has_many :likes_users, source: :user, through: :likes
end
