require 'rails_helper'

describe HomeController, '#routing' do

  it 'routes #index to ' do
    expect(get '/').to route_to 'home#index'
  end

end
