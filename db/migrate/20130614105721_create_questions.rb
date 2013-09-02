class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :email
      t.string :questionline
      t.references :answer

      t.timestamps
    end
    add_index :questions, :answer_id
  end
end
