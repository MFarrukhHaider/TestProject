class ApiController < ApplicationController
    include HTTParty
  def some_action

    response = HTTParty.get('https://animechan.xyz/api')

    if response.success?
      @data = JSON.parse(response.body)
      # Process the @data as needed and render the appropriate view.
    else
      # Handle API request failure, e.g., render an error view.
      @error_message = response['error_message']
    end
  end
end
