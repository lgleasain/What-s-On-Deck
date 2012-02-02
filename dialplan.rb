adhearsion {
  simon_game
}

tropo_agi {
  talks = [[2, 23,  30,  23, 59, 'Break'],
  [3, 00,  00,  00, 30, 'Get Super Powers with Mixins with Garren Smith'],
  [3, 00,  30,  01, 00, "Ruby's Hidden Gems with Andrew Timberlake"],
  [3, 01,  00,  01, 30, 'Ruby and Amazon with Marc Bowes'],
  [2, 17,  30,  11, 30, 'Brai']]
  
  current_index = -1

  talks.each_index do |index|
    talk = talks[index]
    if (Time.now + 2.hours).between? Time.utc(2012, 02, talk[0], talk[1], talk[2]),
      Time.utc(2012, 02, talk[0], talk[3], talk[4])
        current_index = index    
      break
    end 
  end

  play "The current presentation is #{talks[current_index][5]}."
  if current_index < (talks.length - 1)
    next_talk = talks[current_index + 1] 
    play "The next one will be #{next_talk[5]} at #{next_talk[1]+2} #{next_talk[2]}."
  end
  
}
