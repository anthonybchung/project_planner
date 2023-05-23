class OpenedDefaultProject < ActiveRecord::Migration[7.0]
  def change
    change_column_default :projects, :opened,->{'CURRENT_TIMESTAMP'}
  end
end
