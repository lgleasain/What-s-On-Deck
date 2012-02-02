adhearsion {
  simon_game
}

tropo_agi {
  talks = [[2, 15,  30,  16, 00, 'Break'],
  [2, 16,  00,  16, 30, 'Get Super Powers with Mixins with Garren Smith'],
  [2, 16,  30,  17, 00, "Ruby's Hidden Gems with Andrew Timberlake"],
  [2, 17,  00,  17, 30, 'Ruby and Amazon with Marc Bowes']],
  [2, 17,  30,  11, 30, 'Brai']
  
  current_index = -1

  talks.each_index do |index|
    talk = talks[index]
    if Time.now.between? Time.new.utc(2012, 02, talk[0], talk[1]+2, talk[2]),
      Time.new.utc(2012, 02, talk[0], talk[3]+2, talk[4])
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
