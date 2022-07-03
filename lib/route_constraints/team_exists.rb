module RouteConstraints
  class TeamExists
    def self.matches?(request)
      Team.find_by_request(request).present?
    end
  end
end
