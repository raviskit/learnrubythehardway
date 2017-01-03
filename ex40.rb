class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_bday = Song.new(["Happy birthday to you",
  "I don't want to get sued",
  "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
  "With pockets full of shells"])

creep_lyrics = ["I'm a creep",
"I'm a loser",
"What the hell am I doing here?",
"I don't belong here"]

creep_song = Song.new(creep_lyrics)

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

creep_song.sing_me_a_song()

# too_sexy = Song.new("")
#
# too_sexy.sing_me_a_song(["I'm too sexy for my shirt", "Too sexy for my shirt"])
