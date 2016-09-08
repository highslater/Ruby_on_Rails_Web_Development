class CreateCourseras < ActiveRecord::Migration
  def change
    create_table :courseras do |t|

      t.timestamps null: false
    end
  end
end
