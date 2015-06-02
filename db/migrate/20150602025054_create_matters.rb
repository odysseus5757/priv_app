class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.string :name
      t.integer :owner

      t.timestamps

    end
  end
end
