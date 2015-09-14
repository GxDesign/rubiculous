class CreateCardsTable < ActiveRecord::Migration
  def change
  	create_table :cards do |t|
  		t.string :participant
  		t.string :value
  		t.string :suit
  	end
  end
end
