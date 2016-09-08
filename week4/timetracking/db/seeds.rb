ls3 = Project.create(name: "Ls3", description: "Ironhack is a...",)

lsx =Project.create(name: "Lsx", description: "The Beast of Motors")

schedule = Project.create(name: "Scheduled Intervals", description: "Track my service")

diy = Project.create(name: "Diy section", description: "For the daredevil")

v8 = Project.create(name: "V8-Modifications", description: "How much power can you make?")

timeslips = Project.create(name: "1/4 mile timeslips", description: "Earn your bragging rights" )
 
detailing = Project.create(name: "Detailing Section", description: "Remove those pesky swirl marks")

show = Project.create(name: "Show No Go",  description: "Display your show mods")

sound = Project.create(name: "Sound",	description: "Chime in on car audio")

wheels = Project.create(name: "Wheels",  description: "Find out what fits")



ls3.time_entries.create(hours: "1h" , minutes: "10m")
lsx.time_entries.create(hours:"2h" , minutes:"30m")
schedule.time_entries.create(hours: "4h", minutes: "50m")
diy.time_entries.create(hours: "0h" , minutes: "10m")
v8.time_entries.create(hours: "10h" , minutes: "45m")
timeslips.time_entries.create(hours: "3h ", minutes: "20m")
detailing.time_entries.create(hours: "3h ", minutes: "10m")
show.time_entries.create(hours: "12h" , minutes: "49m")
sound.time_entries.create(hours: "5h" , minutes: "22m")
wheels.time_entries.create(hours: "10h", minutes: "30m")

