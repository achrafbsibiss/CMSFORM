class ChangeTypeFieldInput < ActiveRecord::Migration[7.1]
  def change
    change_column :fields, :input_type, :string
  end
end
