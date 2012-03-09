class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :title
      t.integer :counter
			t.references :question
			t.references :poll
			t.references :user

      t.timestamps
    end
  end
end
