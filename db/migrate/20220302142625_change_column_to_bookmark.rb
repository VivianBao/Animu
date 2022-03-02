class ChangeColumnToBookmark < ActiveRecord::Migration[6.0]
  def change
    change_column_null :bookmarks, :content, true
  end
end
