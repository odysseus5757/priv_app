class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_org
      t.string :status

      t.timestamps

    end
  end
end
