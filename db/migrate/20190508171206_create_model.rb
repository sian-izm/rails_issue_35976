class CreateModel < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.integer "width"
      t.integer "height"
    end
  end
end
