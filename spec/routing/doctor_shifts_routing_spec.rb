require "rails_helper"

RSpec.describe DoctorShiftsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/doctor_shifts").to route_to("doctor_shifts#index")
    end

    it "routes to #new" do
      expect(get: "/doctor_shifts/new").to route_to("doctor_shifts#new")
    end

    it "routes to #show" do
      expect(get: "/doctor_shifts/1").to route_to("doctor_shifts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/doctor_shifts/1/edit").to route_to("doctor_shifts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/doctor_shifts").to route_to("doctor_shifts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/doctor_shifts/1").to route_to("doctor_shifts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/doctor_shifts/1").to route_to("doctor_shifts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/doctor_shifts/1").to route_to("doctor_shifts#destroy", id: "1")
    end
  end
end
