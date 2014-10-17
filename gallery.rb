require('./utils.rb')

def create_gallery(gallery_dir, file_paths)
  images_dir = File.join(gallery_dir, "images")
  html_file = File.join(gallery_dir, "index.html")

  create_dir_if(gallery_dir)
  create_dir_if(images_dir)

  file_paths.each do |file|
    FileUtils.cp(file, images_dir)
  end
  img_tags = list_of_images(file_paths)
  content = html_page(img_tags)
  File.write(html_file, content)
end


if __FILE__ == $PROGRAM_NAME
  paths_to_images = ARGV
  create_gallery("gallery", paths_to_images)
end
