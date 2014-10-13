file = ARGV[0]

path =  File.absolute_path(file)

def img_tag(path_to_file)
  "<img src=\"#{path_to_file}\">"
end

puts img_tag(path)
