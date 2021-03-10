class AddDescription2ToCharity < ActiveRecord::Migration[6.0]
  def change
    add_column :charities, :description2, :text
  end
end
