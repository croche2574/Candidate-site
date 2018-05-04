class AddLoadOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :loadOrder, :integer
  end
end
