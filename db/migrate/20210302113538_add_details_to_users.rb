class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :kind, :string, :default => "donator"
    add_column :users, :description, :text
    add_column :users, :phone_number, :string
    add_column :users, :contact_preference, :string
    add_reference :users, :charity, null: true, foreign_key: true
  end
end
