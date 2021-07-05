require "rubygems"

require "rspotify"

require "open-uri"


# Client ID and client secret
RSpotify.authenticate("client_id", "client_secret")


def search
	print "\nType an artist or band name: "

	gets.chomp.capitalize
end

def urls(album)
	uris = Hash[]

	album.each do |item|
		uris.store(item.name, item.images[0]["url"]);
	end

	uris
end

def download(urls)
	urls.each do |name, url|
		open(url.to_s) { |f|
			File.open("./covers/#{name}.jpeg","wb") do |file|
				file.puts f.read
			end
		}
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
