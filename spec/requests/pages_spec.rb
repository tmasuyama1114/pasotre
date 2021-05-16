require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /" do
    it "トップページにアクセスできること" do
      get "/"
      expect(response).to have_http_status(200)
    end
  end
end
