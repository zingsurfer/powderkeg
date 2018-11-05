class Api::V1::Snowcast
  attr_reader :id,
              :resort_id,
              :resort_name

  def initialize(ww_data = {}, ds_data = {}, resort)
    @resort_id = resort.id
    @resort_name = resort.name

    @top_max_temp = ww_data[0]["top"][0]["maxtempF"].to_f
    @mid_max_temp = ww_data[0]["mid"][0]["maxtempF"].to_f
    @bot_max_temp = ww_data[0]["bottom"][0]["maxtempF"].to_f

    @summary = ds_data["daily"]["summary"]
    @wind_speed = ds_data["daily"]["data"][0]["windSpeed"]
    @visibility = ds_data["daily"]["data"][0]["visibility"]
    @cloud_cover = ds_data["daily"]["data"][0]["cloudCover"]

    @precip_probability = ds_data["daily"]["data"][0]["precipProbability"]
    @precip_type = ds_data["daily"]["data"][0]["precipType"]
    @snow_probability = ww_data[0]["chanceofsnow"].to_i
    @snow_accumulation = ds_data["daily"]["data"][0]["precipAccumulation"]
  end

  def peak
    { max_temp: @top_max_temp }
  end

  def mid
    { max_temp: @mid_max_temp }
  end

  def base
    { max_temp: @bot_max_temp }
  end

  def overall
    { summary: @summary,
      wind_speed: @wind_speed,
      visibility: @visibility,
      cloud_cover: @cloud_cover,
      precip: { precip_probability: @precip_probability,
                precip_type: @precip_type,
                snow_probability: @snow_probability,
                snow_accumulation: @snow_accumulation
      }
    }
  end
end
