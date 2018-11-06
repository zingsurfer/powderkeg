class Api::V1::UnsplashService
  def random_photo_data
    JSON.parse(response('/photos/random').body)[0]
  end

  private
  def conn
    Faraday.new(url: "https://api.unsplash.com") do |faraday|
      faraday.params["query"] = "ski,snowboard"
      faraday.params["count"] = 1
      faraday.params["client_id"] = ENV["unsplash_api_key"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def response(url)
    conn.get(url)
  end

end
