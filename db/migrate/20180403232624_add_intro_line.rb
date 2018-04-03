class AddIntroLine < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :info, :string
  end
end
