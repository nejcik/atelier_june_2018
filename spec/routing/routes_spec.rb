require 'rails_helper'

describe 'AppRouting' do
  it {
    expect(root: 'books', action: 'index')
  }
  it {
    expect(get: 'books/12/reserve').to route_to(
      controller: 'reservations', 
      action: 'reserve', 
      book_id: '12')
  }
  it {
    expect(get: take_book_path(1)).to route_to(
      controller: 'reservations',
      action: 'take',
      book_id: '1'
    )
  }
  it {
    expect(get: give_back_book_path(3)).to route_to(
      controller: 'reservations',
      action: 'give_back',
      book_id: '3'
    )
  }
  it {
    expect(get: cancel_book_reservation_path(5)).to route_to(
      controller: 'reservations',
      action: 'cancel',
      book_id: '5'
    )
  }
  it {
    expect(get: 'users/2/reservations').to route_to(
      controller: 'reservations',
      action: 'users_reservations',
      user_id: '2'
    )
  }
  it {
    expect(get: 'google-isbn').to route_to(
      controller: 'google_books',
      action: 'show'
    )
  }
  it {
    expect(get: 'books/new').to route_to(
      controller: 'books',
      action: 'new'
    )
  }
  it {
    expect(get: '/books/2/edit').to route_to(
      controller: 'books',
      action: 'edit',
      id: '2'
    )
  }
  it {
    expect(get: '/books/2').to route_to(
      controller: 'books',
      action: 'show',
      id: '2'
    )
  }
  it {
    expect(delete: '/books/2').to route_to(
      controller: 'books',
      action: 'destroy',
      id: '2'
    )
  }
end

  

