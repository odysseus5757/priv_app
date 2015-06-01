class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.string :name
      t.integer :user_id
      t.string :classification
      t.text :message
      t.string :organization

      t.timestamps

    end
  end
end
