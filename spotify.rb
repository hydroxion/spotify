require "rubygems"

require "rspotify"

require "open-uri"


# Client ID and client secret
RSpotify.authenticate("client_id", "client_secret")


def search
	print "\nType an artist or band name: "

	gets.chomp.capitalize
end

def urls(albums)
	albums.to_h do |album|
	  [album.name, album.images.first["url"]]
	end
  end
  
def download(urls)
	urls.each do |name, url|
		file = URI.open(url)

		File.write("./covers/#{name}.jpeg", file.read)
	end
end


system("clear")


user = search

root = RSpotify::Artist.search(user.to_s)


artist = root.first

albums = artist.albums

download(urls(albums))


system("clear")

puts "\nDownload finished!\n\n"
