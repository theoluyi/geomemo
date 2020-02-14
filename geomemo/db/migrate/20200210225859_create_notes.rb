class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title, :null => false, :default => 'Untitled'
      t.string :content
      t.boolean :nsfw
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :notebook, null: false, foreign_key: true
      t.belongs_to :location, null: true, foreign_key: true

      t.timestamps
    end
  end
end
