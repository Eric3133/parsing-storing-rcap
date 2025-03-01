require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

beatles_serialized = File.read(filepath)
p beatles_serialized
beatles = JSON.parse(beatles_serialized)
# p beatles["title"]

beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
  # etc...
]}

File.open(filepath, 'wb') do |file|
  string = JSON.generate(beatles)
  file.write(string)
end
