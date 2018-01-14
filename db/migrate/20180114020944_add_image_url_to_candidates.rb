class AddImageUrlToCandidates < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :imgur_id, :string
  end
end
