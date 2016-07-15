class AddPixToPins < ActiveRecord::Migration
  def change
    add_column :pins, :pix, :string
  end
end
