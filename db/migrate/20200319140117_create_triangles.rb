class CreateTriangles < ActiveRecord::Migration[6.0]
  def change
    create_table :triangles do |t|
      t.integer "first_side"
      t.integer "second_side"
      t.integer "third side"
      t.timestamps
    end
  end
end
