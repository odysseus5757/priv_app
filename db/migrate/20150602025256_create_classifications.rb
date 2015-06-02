class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :level

      t.timestamps

    end
  end
end
