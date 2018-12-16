module SongsHelper
	def song_artist_field
		if @song.artist && @nested_song
			label_tag("song[artist_name]", "Artist Name: ") + 
			text_field_tag("song[artist_name]") +
			hidden_field_tag("song[artist_id]")
		else
			select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, "id", "name")
		end
	end
end
