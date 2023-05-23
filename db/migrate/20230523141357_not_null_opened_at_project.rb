class NotNullOpenedAtProject < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:projects, :opened,false,DateTime.now)
  end
end
