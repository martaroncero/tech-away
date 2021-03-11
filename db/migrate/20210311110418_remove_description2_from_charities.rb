class RemoveDescription2FromCharities < ActiveRecord::Migration[6.0]
  def change
    remove_column :charities, :description2
  end
end
