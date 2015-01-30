class AddStatusToUser < ActiveRecord::Migration
  def change
    add_reference :users, :user_status, index: true
  end
end
