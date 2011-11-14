class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :team_size
      t.integer :creator_id
      t.date :start_date
      t.date :end_date
      t.integer :hours_per_week
      t.string :photo
      t.boolean :active, :default => true
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
