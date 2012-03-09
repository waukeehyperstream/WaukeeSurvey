class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
			t.references :poll
			t.references :user

      t.timestamps
    end
  end
end
