class Scene
  def enter()
    puts "This scene is not yet configured.  Subclass it and implement enter()."
    exit(1)
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Death < Scene
  @@quips = [
    "You died.  You kind suck at this.",
    "Your mum would be proud... if she were smarter.",
    "Such a loser.",
    "I have a small puppy that's better than this."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class CentralCorridor < Scene
  def enter()
    puts """The Gothons of Planet Percal #25 have invaded your ship and destroyed your entire crew.  You are the last surviving member and your lastmission is to get the neutron bomb from the Arsenal,
    put it in the bridge, and blow the ship up after getting into an
    escape pod.
    You're running down the central corridor to the Arsenal when
    a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume flowing around his hate-filled body.  He's blocking the door to the
    Armoury and about to pull a weapon to blast you.

    OPTIONS:
    - shoot
    - dodge
    - tell a joke
    """
    puts "> "

    action = $stdin.gets.chomp

    if action === "shoot"
      puts """Quick on the draw you yank out your blaster and fire it at the Gothon. His clown costume is flowing and moving around his body, which throws off your aim.  Your laser hits his costume but misses him entirely.  This completely ruins his brand new costume his mother bought him, which makes him fly into an insane rage and blast you repeatedly in the face until you are dead.  Then he eats you."""
      return 'death'
    elsif action == "dodge"
      puts """Like a world class boxer you dodge, weave, slip and slide right as the Gothon's blaster cranks a laser past your head.  In the middle of your artful dodge your foot slips and you bang your head on the metal wall and pass out.  You wake up shortly thereafter only to die as the Gothon stomps on your head and eats you."""
      return 'death'
    elsif action == "tell a joke"
      puts """Lucky for you they made you learn Gothon insults in the academy.  You tell the one Gothon joke you know:
      Lbhe zbgure vf fb sng, jura fur fvgf nebhag gur ubhfr, fur fvgf nebhaq gur ubhfr.
      The Gothon stops, tries not to laugh, then bursts out laughing and can't move.  While he's laughing you run up and shoot him square in the head, putting him down, then jump through the Arsenal door."""
    else
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end
  end
end

class LaserWeaponArmory < Scene
  def enter()
    puts """You do a dive roll..."""
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    print "[keypad] "
    guess = $stdin.gets.chomp
    guesses = 0

    while guesses != code && guess < 10
      puts "BZZZZEDD!"
      guesses += 1
      print "[keypad] "
      guess = $stdin.gets.chomp
    end

    if guess == code
      puts """The container clicks open..."""
    else
      puts """The lock buzzes one last time..."""
    end
  end
end

class TheBridge < Scene
  def enter()
    puts """You burst on to the Bridge with the neutron bomb...

    OPTIONS:
    - throw the bmob
    - slowly place the bomb
    """
    puts "> "

    action = $stdin.gets.chomp

    if action == "throw the bomb"
      puts """In a panic you throw the bomb..."""
    elsif action == "slowly place the bomb"
      puts """You point your blaster at the bomb..."""
    else
      puts "DOES NOT COMPUTER!"
      return "the_bridge"
    end
  end
end

class EscapePod < Scene
  def enter()
    puts """You rush through the ship..."""

    good_pod = rand(1..5)
    print "[pod #] "
    guess = $stdin.gets.chomp

    if guess != good_pod
      puts """You jump into pod %s... and then you die""" % guess
    else
      puts """You jump into pod %s... and then you live""" %guess
      return 'finished'
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end

class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }
  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
