class Team < ApplicationRecord
  def self.find_by_request(request)
    uri = URI(request.original_url)

    if uri.host =~
         /(127.0.0.1|localhost|ngrok.io|192.168|herokuapp.com)/
      begin
        find_by(subdomain: request.params[:username])
      rescue StandardError
        nil
      end
    else
      find_by(subdomain: request.subdomain)
    end
  end
end
