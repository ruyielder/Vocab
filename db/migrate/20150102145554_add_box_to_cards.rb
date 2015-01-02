class AddBoxToCards < ActiveRecord::Migration
  def change
    add_belongs_to :cards, :boxes
    add_index :cards, :boxes_id
  end
end
