class CreateSpreads < ActiveRecord::Migration[5.2]
  def up
    create_table :spreads do |t|
      t.string :name
      t.string :description
    end

    create_table :spread_positions do |t|
      t.belongs_to :spread, index: true
      t.integer :x
      t.integer :y
      t.integer :ordinal
      t.string :description
    end

    sun_spread = Spread.create(name: "Sun Spread", description: "A brief outlook at how you should approach your day.")
    SpreadPosition.create(spread: sun_spread, x: 0, y: 2, ordinal: 1, description: "Your circumstances around how you approach the day")
    SpreadPosition.create(spread: sun_spread, x: 2, y: 0, ordinal: 2, description: "What you should strive for today")
    SpreadPosition.create(spread: sun_spread, x: 4, y: 2, ordinal: 3, description: "What you should be reflecting on today")
    SpreadPosition.create(spread: sun_spread, x: 2, y: 4, ordinal: 4, description: "What you should be cautious of today")
    SpreadPosition.create(spread: sun_spread, x: 2, y: 2, ordinal: 5, description: "What you should be conscious of in others today")
    
  end
  def down
    drop_table :spread_positions
    drop_table :spreads
  end
end
