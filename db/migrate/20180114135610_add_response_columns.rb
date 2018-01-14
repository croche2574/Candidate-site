class AddResponseColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :section1, :string
    add_column :candidates, :section2, :string
    add_column :candidates, :section3, :string
    add_column :candidates, :section4, :string
    add_column :candidates, :section5, :string
    add_column :candidates, :section6, :string
    add_column :candidates, :section7, :string
    add_column :candidates, :section8, :string
  end
end
