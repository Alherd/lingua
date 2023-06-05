class CreateCompletedForms < ActiveRecord::Migration[7.0]
  def change
    create_table :completed_forms do |t|
      t.integer :user_id
      t.integer :task_id
      t.string :fname
      t.timestamps
    end
  end
end

