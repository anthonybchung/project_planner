class NameNotNullProject < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:projects, :name,false)
  end
end
