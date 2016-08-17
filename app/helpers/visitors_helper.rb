module VisitorsHelper
	def only_completed_survey_results(results)
		return results.select{|result| result["completed"]=="1"}
	end
end
