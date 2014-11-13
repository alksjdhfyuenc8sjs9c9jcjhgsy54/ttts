class CreateTotos < ActiveRecord::Migration
  def change
    create_table :totos do |t|
      t.string :name

      t.timestamps
    end
  end
end
