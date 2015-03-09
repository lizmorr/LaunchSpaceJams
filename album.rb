class Album
  def initialize (album_id, album_name, artists, duration_ms)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
    @duration_ms = duration_ms
    @album_tracks = []
  end

  def id
    @album_id
  end

  def duration_min
    (@duration_ms / 1000.0 / 60.0).round(2)
  end

  def tracks
    @album_tracks
  end

  def list_tracks
    track_list = "Tracks: \n"
    tracks.each do |track|
      track_list += "- #{track[:title]} \n"
    end
    track_list
  end

  def summary
    <<SUMMARY
Name: #{@album_name}
Artist: #{@artists}
Length (min): #{duration_min}
#{list_tracks}

SUMMARY
  end
end
