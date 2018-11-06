class Api::V1::ImageGenerator
  def initialize(query)
    @query = query
  end

  def image_hash
    Api::V1::ImageSerializer.new(image).serializable_hash
  end

  private

  def image
    image_data ||= Api::V1::Image.new(unsplash_data)
  end

  def unsplash_data
    unsplash_data ||= Api::V1::UnsplashService.new(@query).random_photo_data
  end
end
