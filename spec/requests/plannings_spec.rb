require 'rails_helper'

RSpec.describe "Plannings", type: :request do

  describe "GET plannings pages" do
    # it "access plannings#index path" do
    #   get plannings_path
    #   expect(response).to have_http_status(200)
    # end
    it "access plannings#new path" do
      get new_planning_path
      expect(response).to have_http_status(200)
    end
  end
end