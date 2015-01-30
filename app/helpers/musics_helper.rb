module MusicsHelper
  def slide_images(music)
    puts "#{Rails.root}/public/uploads/music/slide/#{music.id}/*.jpg"
    Dir.glob("#{Rails.root}/public/uploads/music/slide/#{music.id}/*.jpg").each do |img|
      img.sub!("#{Rails.root}/public","")
    end
  end
end