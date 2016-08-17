class Visitor < ApplicationRecord
  include HTTParty
  format :json

  def self.visitor_typeform_results
    fetch_url = "https://api.typeform.com/v1/form/#{ENV['VISITOR_DEMOGRAPHIC_TYPEFORM_UID']}?key=#{ENV['TYPEFORM_API_KEY']}"
    response = HTTParty.get(fetch_url)
    return JSON.parse(response.body)["responses"]
  end

end
