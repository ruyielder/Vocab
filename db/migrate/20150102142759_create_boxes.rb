class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.belongs_to :user, null: false
      t.string :title, null: false

      t.timestamps
    end

    add_index :boxes, :user_id
  end
end
