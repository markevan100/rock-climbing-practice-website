class CreateClimbers < ActiveRecord::Migration[5.2]
  def change
    create_table :climbers do |t|
      t.string :name
      t.string :award_1, :default => "?"
      t.string :award_2, :default => "?"
      t.string :award_3, :default => "?"
      t.string :year
    end
  end
end
