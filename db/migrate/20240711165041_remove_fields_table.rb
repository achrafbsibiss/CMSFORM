class RemoveFieldsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :form_steps_fields
  end
end
