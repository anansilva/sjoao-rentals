require 'rails_helper'

describe Api::V1::BookingsController do
  describe 'GET #index' do
    it 'returns all bookings' do
      bookings = create_list(:booking, 2)

      get :index

      expect(response.status).to eq(200)
    end

    context 'when user is admin' do
      it 'can see all bookings' do
      end
    end

    context 'when user is guest' do
      it 'can see all their bookings' do
      end

      it 'cannot see other users\' bookings' do
      end
    end

    context 'when user is not authenticated' do
      it 'cannot see bookings' do
      end
    end
  end

  describe 'GET #show' do
    it 'returns the booking' do
      booking = create(:booking)

      get :show, params: { id: booking.id }

      expect(response.status).to eq(200)
    end

    context 'when user is admin' do
      it 'can see the booking' do
      end
    end

    context 'when user is guest' do
      it 'can see their booking' do
      end

      it 'cannot see other user\'s booking' do
      end
    end

    context 'when user is not authenticated' do
      it 'cannot see any bookings' do
      end
    end
  end

  describe 'POST #create' do
    let(:guest_user) { create(:user, roles: 1) }

    it 'creates a new post' do
      params = {
        check_in: 1.month.from_now,
        check_out: 2.months.from_now,
        number_of_adults: 2,
        number_of_children: 1,
        user_id: guest_user.id
      }

      post :create, params: { booking: params }

      expect(response.status).to eq(201)
    end
  end
end
