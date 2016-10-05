
def parse(file, delimiter = ',', quote = '\"')
  parse_array = []

  File.open("#{file}.csv").each do |line|
    line.gsub!('""', '')
    parse_array << line.split("#{quote}#{delimiter}#{quote}")
  end
  return parse_array
end

# print parse("dogs", ",")
# print parse("dinosaurs", "\t")
# print parse("cat_breeds", "\n")
# print parse("contacts")
print parse("routes")
