adhearsion {
  simon_game
}
# This is not the most readable data structure but is a tradeoff between concise and verbose
# the elements are
# day,  start hour,  start minute,  end hour,  end minute, description.
# there are also not any tests in this which would be a no-no with production code.
tropo_agi {
  talks = [[3, 06,  30,  09, 29, 'nothing'],
  [3, 09,  30,  10, 29, 'Smash your app into pieces with Josh Kalderimis'],
  [3, 10,  30,  10, 59, 'Taking the hype out of hypermedia with Ryan Lemmer'],
  [3, 11,  00,  11, 29, 'a Break'],
  [3, 11,  30,  11, 59, 'Taking the hype back to hypermedia - Practical REST With Roar! featuring Nick Sutter'],
  [3, 12,  00,  12, 29, 'Far and Away (A Tour of Distributed Programming With Ruby) featuring Mark Bates'],
  [3, 12,  30,  12, 59, 'Lightning Talks'],
  [3, 13,  00,  13, 59, 'Lunch'],
  [3, 14,  00,  14, 29, 'Heedful Programming with Dave Hoover'],
  [3, 14,  30,  14, 59, 'Grammar-fu:  Crafting my own language with CoffeeScript featuring Aslam Kahn'],
  [3, 15,  00,  15, 29, 'Using Thor and Middleman to manage CoffeeScript application build cycles with Francois Paul'],
  [3, 15,  30,  15, 59, 'a break'],
  [3, 16,  00,  16, 29, 'Revimped - writing vim plugins in Ruby with Rory McKinley'],
  [3, 16,  30,  16, 59, 'Creating phone applications in the cloud for fun and profit with Lance Gleason'],
]
  
  current_index = -1

  talks.each_index do |index|
    talk = talks[index]
    if (Time.now + 2.hours).between? Time.utc(2012, 02, talk[0], talk[1], talk[2]),
      Time.utc(2012, 02, talk[0], talk[3], talk[4])
        current_index = index    
      break
    end 
  end

  if current_index != -1
    play "The current presentation is #{talks[current_index][5]}."
    if current_index < (talks.length - 1)
      next_talk = talks[current_index + 1] 
      play "The next one will be #{next_talk[5]} at #{next_talk[1]+2} #{next_talk[2]}."
    end
  else
    play 'There are no current talks.....but here is some music.'  
    play 'You can go to YouTube and search for Trolo to get a singalong version with lyrics'
    play 'http://net1.madringtones.org/data/13/451546/files/451546.mp3'
  end
  
}
