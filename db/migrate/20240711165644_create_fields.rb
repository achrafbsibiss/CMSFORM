class CreateFields < ActiveRecord::Migration[7.1]
  def change
    create_table :fields do |t|
      t.references :form_step, null: false, foreign_key: true
      t.string :name
      t.integer :input_type

      t.timestamps
    end
  end
end
