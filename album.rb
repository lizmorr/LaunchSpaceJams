class Album
  def initialize (album_id, album_name, artists)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
    @album_tracks = []
  end

  def id
    @album_id
  end

  def duration_min
    duration = 0
    tracks.each do |track|
      duration += track[:duration_ms].to_f / 1000 / 60
    end
    duration.round(2)
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
