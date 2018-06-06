class RemoveConfirmationFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :confirmedSpeaker, :integer
  end
end
