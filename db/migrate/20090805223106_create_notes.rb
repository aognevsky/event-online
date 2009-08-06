class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.integer :user_id
      t.integer :event_id
      t.text :body
      t.boolean :draft, :default => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :notes
  end
end
