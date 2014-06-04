class SubscribersController < ApplicationController
  def new
  end

  def create
  end

  def confirm
  end

  def index
    @subscribers = Subscriber.all
  end
end
