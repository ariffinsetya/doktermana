 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/scheduled_appointments", type: :request do
  # ScheduledAppointment. As you add validations to ScheduledAppointment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ScheduledAppointment.create! valid_attributes
      get scheduled_appointments_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      scheduled_appointment = ScheduledAppointment.create! valid_attributes
      get scheduled_appointment_url(scheduled_appointment)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_scheduled_appointment_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      scheduled_appointment = ScheduledAppointment.create! valid_attributes
      get edit_scheduled_appointment_url(scheduled_appointment)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ScheduledAppointment" do
        expect {
          post scheduled_appointments_url, params: { scheduled_appointment: valid_attributes }
        }.to change(ScheduledAppointment, :count).by(1)
      end

      it "redirects to the created scheduled_appointment" do
        post scheduled_appointments_url, params: { scheduled_appointment: valid_attributes }
        expect(response).to redirect_to(scheduled_appointment_url(ScheduledAppointment.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ScheduledAppointment" do
        expect {
          post scheduled_appointments_url, params: { scheduled_appointment: invalid_attributes }
        }.to change(ScheduledAppointment, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post scheduled_appointments_url, params: { scheduled_appointment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested scheduled_appointment" do
        scheduled_appointment = ScheduledAppointment.create! valid_attributes
        patch scheduled_appointment_url(scheduled_appointment), params: { scheduled_appointment: new_attributes }
        scheduled_appointment.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the scheduled_appointment" do
        scheduled_appointment = ScheduledAppointment.create! valid_attributes
        patch scheduled_appointment_url(scheduled_appointment), params: { scheduled_appointment: new_attributes }
        scheduled_appointment.reload
        expect(response).to redirect_to(scheduled_appointment_url(scheduled_appointment))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        scheduled_appointment = ScheduledAppointment.create! valid_attributes
        patch scheduled_appointment_url(scheduled_appointment), params: { scheduled_appointment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested scheduled_appointment" do
      scheduled_appointment = ScheduledAppointment.create! valid_attributes
      expect {
        delete scheduled_appointment_url(scheduled_appointment)
      }.to change(ScheduledAppointment, :count).by(-1)
    end

    it "redirects to the scheduled_appointments list" do
      scheduled_appointment = ScheduledAppointment.create! valid_attributes
      delete scheduled_appointment_url(scheduled_appointment)
      expect(response).to redirect_to(scheduled_appointments_url)
    end
  end
end
