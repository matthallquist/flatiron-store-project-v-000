class RemoveStatusFromUsersAddStatusToCarts < ActiveRecord::Migration
  def change
    remove_column :users, :status
    add_column :carts, :status, :string, default: "unsubmitted"
  end
end
