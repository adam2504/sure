class RestoreCategoryClassificationAndAddIncomeBudget < ActiveRecord::Migration[7.2]
  def up
    rename_column :categories, :classification_unused, :classification
    add_column :budget_categories, :budgeted_income, :decimal,
               precision: 19, scale: 4, null: false, default: 0
  end

  def down
    rename_column :categories, :classification, :classification_unused
    remove_column :budget_categories, :budgeted_income
  end
end
