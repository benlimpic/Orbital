puts "planting some seeds..."

projects = Project.create([
  {
    title: "Explore the World!",
    description: "Let's visit a bunch of different places!",
    body: "I would like to visit Egypt, England, Australia, The North Pole, and the Amazon!",
    priority: "Urgent",
    life_cycle: "In Progress",
  },
  {
    title: "Explore the Moon!",
    description: "Let's travel to the Moon and explore!",
    body: "I would like to visit craters, climb moon mountains, play moon golf, bounce around for science, and take samples!",
    priority: "Medium",
    life_cycle: "Assigned",
  },
  {
    title: "Start my own Zoo",
    description: "I am starting a fantasy Zoo in my home town and need to fill the exhibits with magical creatures!",
    body: "I need to quest the wilderness and find a unicorn, several dragons, one kraken, the Loch Ness monster, and Bigfoot!",
    priority: "Low",
    life_cycle: "Completed",
  }
])

tasks = Task.create([
  {
    title: "Heading to Egypt!",
    description: "Let's try to read some hyroglyphics!",
    body: "Hmmm it looks like these symbols are a spell book for the ancient Egyptians.. maybe I shouldn't have read it outloud!",
    priority: "High",
    life_cycle: "Edit Requested",
    project: projects.first
  },
  {
    title: "Collecting Moon Rocks!",
    description: "We may have discovered life on the moon, or just some weird rocks…Science!",
    body: "I found a weird moon cave with strange rocks inside!",
    priority: "None",
    life_cycle: "Ready for Review",
    project: projects.second
  },
  {
    title: "Befriend some Dragons",
    description: "I am negotiating a fun business arrangement with my new Dragon friends!",
    body: "The Dragons insist on getting their share of the gold for all Dragon merchandise sold, They sure do drive a hard bargain!",
    priority: "Urgent",
    life_cycle: "Completed",
    project: projects.third
  }
])

subtasks = Subtask.create([
  {
    title: "I want my Mummy!",
    description: "While exploring the pyramids we found a friendly Mummy.",
    body: "Monty the Mummy wanted to accompany us on our trip around the world but we weren’t quite sure how the customs officials would react… to the smell.",
    priority: "Urgent",
    life_cycle: "In Progress",
    task: tasks.first
  },
  {
    title: "Eggs not Rocks!",
    description: "Turns out those weird rocks were a little more complicated than we first thought",
    body: "While preparing to begin our mission home, the “rocks/eggs in the cargo bay began to shake and crack… Suddenly, hundreds of glowing gummy bear things came shooting out of the dusty shells and started bouncing off the walls and asking to meet our leader. The captain is now addressing the flock and will soon show them the first Minions movie as a treat.",
    priority: "None",
    life_cycle: "In Progress",
    task: tasks.second
  },
  {
    title: "Very Cool Shirt!",
    description: "Merchandise is a hit!",
    body: "Our Dragon merchandise is so successful we have decided to release an entire line of fireproof clothing. Unfortunately for us, these Dragons are some real diva designers; they only respond to Ja Ja, Mugatu, and Patricia.",
    priority: "Low",
    life_cycle: "Completed",
    task: tasks.third
  }
])

puts "Some crazy plants is growin!"