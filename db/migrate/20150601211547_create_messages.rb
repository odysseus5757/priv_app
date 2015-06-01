class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.integer :creator
      t.integer :recipient
      t.text :message_content
      t.string :classification

      t.timestamps

    end
  end
end
