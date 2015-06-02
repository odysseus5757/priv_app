class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :creator_id
      t.integer :matter_id
      t.integer :recipient_id
      t.integer :classification
      t.text :content
      t.integer :organization

      t.timestamps

    end
  end
end
