class CreateEventPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :event_photos do |t|
      t.string :imgurID
      t.string :title
      t.text :description
      t.string :album

      t.timestamps
    end
  end
end
