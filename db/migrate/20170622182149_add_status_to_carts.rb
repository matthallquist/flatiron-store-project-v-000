class AddStatusToCarts < ActiveRecord::Migration
  def change
    add_column :users, :status, :string, default: "unsubmitted"
  end
end
