class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :votedin
      t.string :rank

      t.timestamps
    end
  end
end
