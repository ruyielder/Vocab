class AddIndexToBoxesTitle < ActiveRecord::Migration
  def change
    add_index :boxes, :title, unique: true
  end
end
