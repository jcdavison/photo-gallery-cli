def html_page(content)
  layout = <<-HTML
    <!DOCTYPE html>
    <html>
    <head>
      <title>My Gallery</title>
    </head>
    <body>
      <h1>My Gallery</h1>
      #{content}
    </body>
    </html>
  HTML
  layout
end

def img_tag(path_to_file)
  "<img src=\"#{path_to_file}\">"
end

def list_of_images(images)
  list_of_image_tags = []
  images.each do |image|
    list_of_image_tags.push(img_tag(image))
  end
  list_of_image_tags
end

def list_of_file_paths(list_of_file_names)
  absolute_file_paths = []
  list_of_file_names.each do |file|
    absolute_file_paths.push(File.absolute_path(file))
  end
  absolute_file_paths
end


if __FILE__ == $PROGRAM_NAME
  images = ARGV
  absolute_file_paths = list_of_file_paths(images)
  images = list_of_images(absolute_file_paths)
  content = images.join("\n")
  puts html_page(content)
end
