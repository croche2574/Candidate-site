class AddImageUrlToCandidates < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :image_url, :string
  end
end
