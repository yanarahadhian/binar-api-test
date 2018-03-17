require 'rails_helper'

RSpec.describe 'Orders API', type: :request do
  let(:user) { create(:user) }
  let!(:orders) { create_list(:order, 10, price: 123456, imageUrl: 'https://robohash.org/my-own-slug.png?size=300x300') }
  let(:order_id) { orders.first.id }
  let(:headers) { valid_headers }

  describe 'GET /orders' do
    before { get '/orders', params: {}, headers: headers }

    it 'returns orders' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /orders/:id' do
    before { get "/orders/#{order_id}", params: {}, headers: headers }

    context 'when the record exists' do
      it 'returns the order' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(order_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:order_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Order/)
      end
    end
  end

  describe 'POST /orders' do
    let(:valid_attributes) { { name: 'Learn Elm', price: 123456, imageUrl: 'https://robohash.org/my-own-slug.png?size=300x300' }.to_json }

    context 'when request is valid' do
      before { post '/orders', params: valid_attributes, headers: headers }

      it 'creates a order' do
        expect(json['name']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when request is invalid' do
      let(:invalid_attributes) { { name: nil }.to_json }
      before { post '/orders', params: invalid_attributes, headers: headers }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(json['message'])
          .to match(/Validation failed: Name can't be blank/)
      end
    end
  end

  describe 'PUT /orders/:id' do
    let(:valid_attributes) { { name: 'Shopping' }.to_json }

    context 'when the record exists' do
      before { put "/orders/#{order_id}", params: valid_attributes, headers: headers }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /orders/:id' do
    before { delete "/orders/#{order_id}", params: {}, headers: headers }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
