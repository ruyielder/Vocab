class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :user, null: false

      t.string :first, null: false
      t.string :second, null: false

      # for statistics
      t.float  :positive_percent, default: 0.0
      t.integer :positive_count, default: 0
      t.integer :negative_count, default: 0

      t.timestamps
    end

    add_index :cards, :user_id
  end
end
