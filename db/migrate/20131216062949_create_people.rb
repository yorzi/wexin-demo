class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :weibo
      t.string :phone
      t.string :email
      t.text :description
      t.text :interest
      t.string :twitter

      t.timestamps
    end
  end
end
