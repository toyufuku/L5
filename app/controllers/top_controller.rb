class TopController < ApplicationController
  def main
    @tweets = Tweet.all
  end
end
