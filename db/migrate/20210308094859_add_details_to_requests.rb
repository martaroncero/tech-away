class AddDetailsToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :status, :string, default: "Pending"
    add_column :requests, :description, :string
  end
end
