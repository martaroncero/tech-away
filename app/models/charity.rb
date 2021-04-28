class Charity < ApplicationRecord
  has_many :users
  has_many :bookings
  has_many :requests, through: :users
  has_one_attached :photo

  def generate_qr_code
    qrcode = RQRCode::QRCode.new(whatsapp_number)

    qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6,
      standalone: true
    )
  end
end
