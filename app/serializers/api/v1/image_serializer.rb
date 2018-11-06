class Api::V1::ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sizes, :links
end
