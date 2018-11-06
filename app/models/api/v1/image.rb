class Api::V1::Image
  attr_reader :id
  def initialize(unsplash_data)
    @id = 176
    @thumb_size = unsplash_data["urls"]["thumb"]
    @small_size = unsplash_data["urls"]["small"]
    @regular_size = unsplash_data["urls"]["regular"]
    @full_size = unsplash_data["urls"]["full"]
    @raw_size = unsplash_data["urls"]["raw"]
    @artist_link = unsplash_data["links"]["html"]
    @artist_referral_link = artist_referral_link
    @unsplash_link = unsplash_link
  end

  def artist_referral_link
    "#{@artist_link}?utm_source=powdercast&utm_medium=referral"
  end

  def unsplash_link
    "https://unsplash.com/?utm_source=powdercast&utm_medium=referall"
  end

  def sizes
    { thumb_size: @thumb_size,
      small_size: @small_size,
      regular_size: @regular_size,
      full_size: @full_size
    }
  end

  def links
    { artist_referral_link: @artist_referral_link,
      unsplash_link: @unsplash_link }
  end
end
