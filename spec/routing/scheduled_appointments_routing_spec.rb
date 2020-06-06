require "rails_helper"

RSpec.describe ScheduledAppointmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/scheduled_appointments").to route_to("scheduled_appointments#index")
    end

    it "routes to #new" do
      expect(get: "/scheduled_appointments/new").to route_to("scheduled_appointments#new")
    end

    it "routes to #show" do
      expect(get: "/scheduled_appointments/1").to route_to("scheduled_appointments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/scheduled_appointments/1/edit").to route_to("scheduled_appointments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/scheduled_appointments").to route_to("scheduled_appointments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/scheduled_appointments/1").to route_to("scheduled_appointments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/scheduled_appointments/1").to route_to("scheduled_appointments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/scheduled_appointments/1").to route_to("scheduled_appointments#destroy", id: "1")
    end
  end
end
