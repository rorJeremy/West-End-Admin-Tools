ActiveRecord::Base.logger = Logger.new nil
namespace :visitor_tokens_from_survey do
  desc "Gets each visitor's unique token the is associated with the visitor's survey they filled out."
  task :fetch => :environment do
    fetch_url = "https://api.typeform.com/v1/form/#{ENV['VISITOR_DEMOGRAPHIC_TYPEFORM_UID']}?key=#{ENV['TYPEFORM_API_KEY']}"
    response = HTTParty.get(fetch_url)
    results = JSON.parse(response.body)["responses"]
    completed_survey_results = results.select{|result| result["completed"]=="1"}

    completed_survey_results.each do |result|
      Typeform.create!(token: result["token"], which_survey: "#{ENV['VISITOR_DEMOGRAPHIC_TYPEFORM_UID']}")
    end
  end
end