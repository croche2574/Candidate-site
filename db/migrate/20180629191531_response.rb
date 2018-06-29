class Response < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :responded, :integer
  end
end
