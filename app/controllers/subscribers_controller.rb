class SubscribersController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end

  def create
    subscriber = Subscriber.create!(params[:subscriber].permit(:name, :email))
    redirect_to :action => :new
  end

  def confirm
  end

  def index
    @subscribers = Subscriber.all
  end
end
