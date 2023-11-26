class User < ApplicationRecord
    has_one :profile
    has_many :tweets, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :like_tweets, source: :tweet, through: :likes
end
