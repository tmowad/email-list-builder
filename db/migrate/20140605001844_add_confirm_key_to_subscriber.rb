class AddConfirmKeyToSubscriber < ActiveRecord::Migration
  def change
    add_column :subscribers, :confirm_key, :string
  end
end
