class CreateFormSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :form_steps do |t|
      t.references :template, null: false, foreign_key: true
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
