class RemoveCategoryFromSize < ActiveRecord::Migration
  def change
    remove_reference :sizes, :category, index: true
  end
end
