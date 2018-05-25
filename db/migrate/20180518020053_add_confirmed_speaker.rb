class AddConfirmedSpeaker < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :confirmedSpeaker, :integer
  end
end
