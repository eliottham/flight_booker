class AddColToPassenger < ActiveRecord::Migration[5.0]
  def change
  	change_table :passengers do |t|
  		t.references :booking, index: true
  	end
  end
end
