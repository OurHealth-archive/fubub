require 'rails_helper'

RSpec.describe "home/index.html.haml", :type => :view do

  it "renders the HTML template" do
    render

    expect(rendered).to match /FUBUB/
  end

end
