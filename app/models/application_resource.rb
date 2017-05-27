class ApplicationResource < ActiveResource::Base
  self.site = CETS_API
  self.headers['Authorization'] = "Token token=#{CETS_TOKEN}"

end
