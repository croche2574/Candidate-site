class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.string :race
      t.string :name
      t.string :rating
      t.string :phone
      t.string :address
      t.string :email
      t.string :website
      t.string :facebook

      t.timestamps
    end
  end
end
