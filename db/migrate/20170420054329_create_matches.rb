class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.date :day

      t.timestamps
    end
  end
end
