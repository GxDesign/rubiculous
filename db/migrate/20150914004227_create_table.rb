class CreateTable < ActiveRecord::Migration
  def change
  	create_table :cards do |t|
  		t.string :participant
  		t.string :card_value
  		t.string :card_suit
  	end
  end
end

