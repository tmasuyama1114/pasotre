require 'rails_helper'

RSpec.describe "Plannings", type: :request do
  describe "[Success] access the plannings pages" do
    context 'when accesses the /plannings/index'
      before do
        training = FactoryBot.create(:training_leg)
        menu = FactoryBot.create(:menu_0)
      end

      it "should success with http 200" do
        get plannings_path
        expect(response).to have_http_status(200)
      end

      it "should success without http 404" do
        get plannings_path
        expect(response).not_to have_http_status(404)
      end

      it "should success without http 500" do
        get plannings_path
        expect(response).not_to have_http_status(500)
      end

      it "should success with string_Today" do
        get plannings_path
        expect(response.body).to include "Today"
      end

      it "should success with string_test_leg to check leg menu" do
        get plannings_path
        expect(response.body).to include "test_leg"
      end

    context 'when accesses the /plannings/new'
      it "should success with http 200" do
        get new_planning_path
        expect(response).to have_http_status(200)
      end

      it "should success without http 404" do
        get new_planning_path
        expect(response).not_to have_http_status(404)
      end

      it "should success without http 500" do
        get new_planning_path
        expect(response).not_to have_http_status(500)
      end

      it "should success with string_make" do
        get new_planning_path
        expect(response.body).to include "make"
      end

      it "should success without string_abcdefg" do
        get new_planning_path
        expect(response.body).not_to include "abcdefg"
      end
  end

  # describe "[Fail] access the plannings pages" do
  #   context 'when accesses the plannings pages without training and menu records'
  #     it "" do
  #     end
  # end

end