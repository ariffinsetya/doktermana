require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe 'GET index' do
        let!(:patients) { create_list :patient, 3 }
        let!(:doctors) { create_list :doctor, 3 }
        context 'params type is nil' do
            it 'assigns users and title' do
                get :index
                expect(assigns[:users]).to eq User.all
                expect(assigns[:title]).to eq 'Users'
            end
        end
        context 'params type is exist' do
            it 'assigns users with specified type and title' do
                get :index, params: {type: 'Doctor'}
                expect(assigns[:users]).to eq doctors
                expect(assigns[:title]).to eq 'Doctor'
            end
        end
    end

    describe 'GET show' do
        let!(:patient) { create :patient }
        it 'assigns user and title' do
            get :show, params: {type: 'Patient', id: patient.id}
            expect(assigns[:user]).to eq patient
            expect(assigns[:title]).to eq 'Patient'
        end
    end

    describe 'GET edit' do
        let!(:patient) { create :patient }
        it 'assigns user and title' do
            get :edit, params: {type: 'Patient', id: patient.id}
            expect(assigns[:user]).to eq patient
            expect(assigns[:title]).to eq 'Patient'
        end
    end

    describe 'GET new' do
        let!(:patient) { Patient.new }
        context 'user exist' do
            it 'assigns user and title' do
                get :new, params: {type: 'Patient'}
                expect(assigns[:user]).to be_present 
                expect(assigns[:title]).to eq 'Patient'
            end
        end
    end

    describe 'POST create' do
        let(:patient) { build :patient }
        it 'create new user' do
            post :create, params: { patient: patient.attributes.merge({'location'=>'Patient'})}
            expect(User.where(email: patient.email).first).to be_present
        end
    end

    describe 'PUT/PATCH update' do
        let(:patient) { create :patient }
        let!(:new_name) { "nama baru" }
        it 'create new user' do
            patient.name = new_name
            put :update, params: { id: patient.id, patient: patient.attributes.merge({'location'=>'Patient'})}
            expect(User.where(email: patient.email).first.name).to eq new_name
        end
    end

    describe 'DELETE destroy' do
        let(:patient) { create :patient }
        it 'create new user' do
            delete :destroy, params: { id: patient.id }
            expect(User.where(email: patient.email)).to eq []
        end
    end
end 