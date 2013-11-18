class CreateCategorySizes < ActiveRecord::Migration
  def change
    create_table :category_sizes do |t|
      t.references :category, index: true
      t.references :size, index: true

      t.timestamps
    end
  end
end
