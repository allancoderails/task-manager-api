require 'rails_helper'

RSpec.describe 'Users API', type: :request do
    let!(:user) {create(:user)}
    let(:user_id) {user.id}
    before{host! "api.taskmanager.dev" }
describe "GET /users/:id" do
   
    before do
        headers = {"Accept" => "application/vnd.taskmanager.v1"}
        get "/users/#{user_id}",params: {},headers: headers
    end
    context "when the user exist" do
        it "returns the user" do
            user_response = JSON.parse(response.body)
            expect(user_response["id"]).to eq(users_id)
        end
    end
    end
    
    end



