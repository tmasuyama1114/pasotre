require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "[Success] access the top and about pages" do
    context 'when accesses root page'
      it "should success with http 200" do
        get root_path
        expect(response).to have_http_status(200)
      end

      it "should success without http 404" do
        get root_path
        expect(response).not_to have_http_status(404)
      end

      it "should success without http 500" do
        get root_path
        expect(response).not_to have_http_status(500)
      end

      it "should success with strings_FEATURES" do
        get root_path
        expect(response.body).to include "FEATURES"
      end

      it "should success without strings_abcdefg" do
        get root_path
        expect(response.body).not_to include "abcdefg"
      end

    context 'when accesses /about'
      it "should success with http 200" do
        get about_path
        expect(response).to have_http_status(200)
      end

      it "should success without http 404" do
        get about_path
        expect(response).not_to have_http_status(404)
      end

      it "should success without http 500" do
        get about_path
        expect(response).not_to have_http_status(500)
      end

      it "should success with strings_About" do
        get about_path
        expect(response.body).to include "About"
      end

      it "should success without strings_abcdefg" do
        get about_path
        expect(response.body).not_to include "abcdefg"
      end
    end
end