class CreateCards < ActiveRecord::Migration[5.2]
  def up
    create_table :cards do |t|
      t.string :name
      t.integer :ordinal
      t.string :suit
      t.string :description
    end

    #Major Arcana
    Card.create(name: "Unconquered Sun", ordinal: 1, suit: "major", description: "Righteousness and excellence")
    Card.create(name: "Luna", ordinal: 2, suit: "major", description: "Inspiration and cycles of growth")
    Card.create(name: "Mercury", ordinal: 3, suit: "major", description: "Journeys and adventure")
    Card.create(name: "Venus", ordinal: 4, suit: "major", description: "Serenity and positive encounters")
    Card.create(name: "Mars", ordinal: 5, suit: "major", description: "War and conflict")
    Card.create(name: "Jupiter", ordinal: 6, suit: "major", description: "Secrets and the unknown")
    Card.create(name: "Saturn", ordinal: 7, suit: "major", description: "Endings and conclusions")
    Card.create(name: "Gaia", ordinal: 8, suit: "major", description: "Abundance and life")
    Card.create(name: "The Wyld", ordinal: 9, suit: "major", description: "Chaos and loss of control")
    Card.create(name: "The Underworld", ordinal: 10, suit: "major", description: "Stagnation and unhealthy perseverance")
    Card.create(name: "The Infernal Realms", ordinal: 11, suit: "major", description: "Pride and arrogance")
    Card.create(name: "The Heavenly Realms", ordinal: 12, suit: "major", description: "Perfection and harmony")
    
    #Minor Arcana
    #Sun Cards
    Card.create(name: "Dawn", ordinal: 13, suit: "sun", description: "Rising to challenge")
    Card.create(name: "Zenith", ordinal: 14, suit: "sun", description: "Championing your beliefs")
    Card.create(name: "Twilight", ordinal: 15, suit: "sun", description: "Building on your knowledge")
    Card.create(name: "Night", ordinal: 16, suit: "sun", description: "Compromising yourself for your ideals")
    Card.create(name: "Eclipse", ordinal: 17, suit: "sun", description: "Synergy and win-win scenarios")
    
    #Moon Cards
    Card.create(name: "New Moon", ordinal: 18, suit: "moon", description: "Alluring mystery")
    Card.create(name: "Waxing Moon", ordinal: 19, suit: "moon", description: "Emotion over logic")
    Card.create(name: "Full Moon", ordinal: 20, suit: "moon", description: "Direct confrontation")
    Card.create(name: "Waning Moon", ordinal: 21, suit: "moon", description: "Defiance of convention")
    Card.create(name: "Lunar Eclipse", ordinal: 22, suit: "moon", description: "Meeting half way")
    
    #Mercury Cards
    Card.create(name: "The Captain", ordinal: 23, suit: "mercury", description: "Discipline and orderliness")
    Card.create(name: "The Gull", ordinal: 24, suit: "mercury", description: "Wanderlust and travel")
    Card.create(name: "The Mast", ordinal: 25, suit: "mercury", description: "Strength and exertion")
    Card.create(name: "The Messenger", ordinal: 26, suit: "mercury", description: "Service and assistance")
    Card.create(name: "The Ship's Wheel", ordinal: 27, suit: "mercury", description: "Enduring adversity")
    
    #Venus Cards
    Card.create(name: "The Ewer", ordinal: 28, suit: "venus", description: "Affection and romance")
    Card.create(name: "The Lovers", ordinal: 29, suit: "venus", description: "Uneven relations")
    Card.create(name: "The Musician", ordinal: 30, suit: "venus", description: "Joy of life and overindulgence")
    Card.create(name: "The Peacock", ordinal: 31, suit: "venus", description: "Calculated partnerships")
    Card.create(name: "The Pillar", ordinal: 32, suit: "venus", description: "Stable and true partnerships")
    
    #Mars Cards
    Card.create(name: "The Banner", ordinal: 33, suit: "mars", description: "Reputation and rumour")
    Card.create(name: "The Gauntlet", ordinal: 34, suit: "mars", description: "Difficult choices")
    Card.create(name: "The Quiver", ordinal: 35, suit: "mars", description: "Flexibility and versatility")
    Card.create(name: "The Shield", ordinal: 36, suit: "mars", description: "Conflict for the sake of conflict")
    Card.create(name: "The Spear", ordinal: 37, suit: "mars", description: "Skill and professionalism")
    
    #Jupiter Cards
    Card.create(name: "The Guardians", ordinal: 38, suit: "jupiter", description: "Rewards from hard work")
    Card.create(name: "The Key", ordinal: 39, suit: "jupiter", description: "Study and cleverness")
    Card.create(name: "The Mask", ordinal: 40, suit: "jupiter", description: "Concealed knowledge")
    Card.create(name: "The Sorcerer", ordinal: 41, suit: "jupiter", description: "Power and influence")
    Card.create(name: "The Treasure Trove", ordinal: 42, suit: "jupiter", description: "Understanding and rewards through excellence")
    
    #Saturn Cards
    Card.create(name: "The Corpse", ordinal: 43, suit: "saturn", description: "Planned and graceful endings")
    Card.create(name: "The Crow", ordinal: 44, suit: "saturn", description: "Disillusionment and facing the facts")
    Card.create(name: "The Haywain", ordinal: 45, suit: "saturn", description: "Gradual decline")
    Card.create(name: "The Rising Smoke", ordinal: 46, suit: "saturn", description: "End of a journey")
    Card.create(name: "The Sword", ordinal: 47, suit: "saturn", description: "Realization of dreams")
    
    #Element Cards
    Card.create(name: "Air", ordinal: 48, suit: "elements", description: "Ephemeral knowledge")
    Card.create(name: "Earth", ordinal: 49, suit: "elements", description: "Permanence")
    Card.create(name: "Fire", ordinal: 50, suit: "elements", description: "Passion")
    Card.create(name: "Water", ordinal: 51, suit: "elements", description: "Adaptability")
    Card.create(name: "Wood", ordinal: 52, suit: "elements", description: "Growth")
    
  end
  def down
    drop_table :cards
  end
end
