class CreatePastDues < ActiveRecord::Migration[5.1]
  def change
    create_table :past_dues do |t|
      t.string :name
      t.string :race

      t.timestamps
    end
  end
end
