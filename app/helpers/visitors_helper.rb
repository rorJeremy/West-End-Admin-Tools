module VisitorsHelper
	def only_completed_survey_results(results)
		return results.select{|result| result["completed"]=="1"}
	end

	def get_visitor_id(visitor_token)
		visitor = Visitor.find_by(typeform_token: visitor_token)
		unless visitor == nil
			return visitor.id
		else 
			return 1
		end
	end

	def survey_based_on_token(visitors, token)
		return visitors.select{|result| result["token"]==token}
	end
end
