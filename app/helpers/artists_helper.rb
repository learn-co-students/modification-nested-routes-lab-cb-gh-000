module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song, nested_song)
  	if song.artist && nested_song
			label_tag("song[artist_name]", "Artist Name: ") + 
			text_field_tag("song[artist_name]") +
			hidden_field_tag("song[artist_id]")
		else
			select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, "id", "name")
		end
	end
	
end
