module SongsHelper

  def artist_se_field(song)
    if song.artist.nil?
      text_field_tag "song[artist_name]"
    else
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end

end
