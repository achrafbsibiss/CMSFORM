class CreateFormStepsFields < ActiveRecord::Migration[7.1]
  def change
    create_table :form_steps_fields do |t|
      t.references :form_step, null: false, foreign_key: true
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
