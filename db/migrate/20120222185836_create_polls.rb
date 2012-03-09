class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title
      t.integer :votes
			t.references :user

      t.timestamps
    end
  end
end
