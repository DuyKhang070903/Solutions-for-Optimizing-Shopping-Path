# -------------------------------------------------------------------
import qrcode

# Content to encode in the QR (text data)
data = """FRUITS
Red Grapes (USA): 500,000 VND/kg
Envy Apples (New Zealand): 700,000 VND/kg
Bananas: 30,000 VND/bunch
Cam Sanh Oranges: 60,000 VND/kg
Hoa Loc Mangoes: 80,000 VND/kg
Seedless Watermelon: 20,000 VND/kg
Da Lat Strawberries: 250,000 VND/kg"""

qr = qrcode.QRCode(
    version=8,  # Larger QR (~53x53 modules)
    error_correction=qrcode.constants.ERROR_CORRECT_H,  # Higher error correction (30%)
    box_size=15,  # Size per module (~15px, suitable for printing or display)
    border=6  # Larger border for easier scanning
)

qr.add_data(data)
qr.make(fit=True)

qr_image = qr.make_image(fill="black", back_color="white")
qr_image.save("qr_fruits.png")

print("QR code has been generated and saved as 'qr_fruits.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """RAU CU
# Cà rốt Đà Lạt: 25.000đ/kg
# Khoai tây Pháp: 30.000đ/kg
# Cải thảo Hàn Quốc: 35.000đ/kg
# Ớt chuông Đà Lạt: 50.000đ/kg
# Rau muống: 12.000đ/bó
# Bắp cải trắng: 20.000đ/kg
# Hành lá: 10.000đ/bó"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_raucu.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_raucu.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """THIT VA HAI SAN
# Thịt bò Úc: 450.000đ/kg
# Cá hồi phi lê: 600.000đ/kg
# Tôm sú tươi: 350.000đ/kg
# Thịt heo ba rọi: 170.000đ/kg
# Ức gà tươi CP: 120.000đ/kg
# Cua Cà Mau: 550.000đ/kg
# Mực ống Phan Thiết: 300.000đ/kg"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_thitvahaisan.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_thitvahaisan.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """DO UONG
# Coca-Cola (lon 330ml): 12.000đ/lon
# Nước cam ép Twister (1L): 45.000đ/chai
# Bia Heineken (lon 330ml): 20.000đ/lon
# Trà xanh Olong Tea+ (455ml): 16.000đ/chai
# Nước khoáng Lavie (500ml): 8.000đ/chai
# Rượu vang Đà Lạt Classic (750ml): 180.000đ/chai
# Nước dừa Cocoxim (330ml): 25.000đ/hộp"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_douong.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_douong.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """SUA VA CHE PHAM TU SUA
# Sữa tươi Vinamilk 100% (1L): 35.000đ/hộp
# Sữa chua uống TH True Yogurt (180ml): 10.000đ/chai
# Phô mai Con Bò Cười (hộp 8 miếng): 40.000đ/hộp
# Sữa đặc Ông Thọ (Lon 380g): 30.000đ/lon
# Sữa hạt hạnh nhân Vinamilk (180ml): 18.000đ/hộp
# Váng sữa Monte Đức (55g): 22.000đ/hộp
# Kem que Wall’s (80ml): 15.000đ/que"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_sua.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_sua.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """GIA VI VA DO KHO
# Đường tinh luyện Biên Hòa (1kg): 22.000đ/gói
# Muối i-ốt (500g): 10.000đ/gói
# Bột ngọt Ajinomoto (454g): 45.000đ/gói
# Nước mắm Nam Ngư (500ml): 40.000đ/chai
# Tương ớt Chinsu (250g): 18.000đ/chai
# Bột canh Hải Châu (200g): 12.000đ/gói
# Nước tương Maggi (700ml): 35.000đ/chai"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_giavidokho.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_giavidokho.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """GAO VA MI CAC LOAI
# Gạo ST25 (5kg): 250.000đ/bao
# Gạo Jasmine (5kg): 150.000đ/bao
# Mì tôm Hảo Hảo (gói 75g): 7.000đ/gói
# Phở khô Vifon (500g): 40.000đ/bịch
# Miến dong Phú Hương (300g): 30.000đ/gói
# Bún khô Safoco (500g): 25.000đ/gói
# Nui xoắn Pasta (500g): 45.000đ/gói"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_gaovami.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_gaovami.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """DO HOP VA THUC PHAM CHE BIEN SAN
# Cá hộp 3 Miền (150g): 25.000đ/lon
# Pate Gan Tulip (340g): 70.000đ/hộp
# Xúc xích Vissan (gói 500g): 90.000đ/gói
# Thịt hộp Spam (340g): 130.000đ/hộp
# Chà bông heo Tường An (200g): 90.000đ/hộp
# Dưa món Lạc Việt (300g): 50.000đ/hũ
# Kim chi Hàn Quốc (500g): 75.000đ/hũ"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_dohop.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_dohop.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """SUA TAM VA DAU GOI
# Sữa tắm nam Romano Classic (650g): 125.000đ/chai
# Sữa tắm nữ Dove dưỡng ẩm (800g): 150.000đ/chai
# Dầu gội Head & Shoulders (850ml): 160.000đ/chai
# Kem đánh răng P/S (250g): 40.000đ/tuýp
# Dầu xả Sunsilk mềm mượt (650ml): 120.000đ/chai
# Sáp vuốt tóc Gatsby (75g): 90.000đ/hộp
# Nước hoa X-Men Fire (50ml): 170.000đ/chai"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_suatamvadaugoi.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_suatamvadaugoi.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """MY PHAM VA CHAM SOC DA
# Sữa rửa mặt Senka Perfect Whip (120g): 99.000đ/tuýp
# Kem chống nắng Anessa (60ml): 450.000đ/chai
# Son môi MAC Ruby Woo: 650.000đ/thỏi
# Phấn nền Maybelline Fit Me (30ml): 180.000đ/chai
# Nước tẩy trang Bioderma (500ml): 320.000đ/chai
# Mặt nạ giấy Mediheal (miếng): 40.000đ/miếng
# Kem dưỡng ẩm Cetaphil (100g): 250.000đ/hũ"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_mypham.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_mypham.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """DO DUNG GIA DINH
# Nước rửa chén Sunlight (750ml): 40.000đ/chai
# Nước lau sàn Gift (1L): 50.000đ/chai
# Giấy vệ sinh Pulppy (lốc 10 cuộn): 75.000đ/lốc
# Bột giặt Omo (3kg): 180.000đ/túi
# Nước xả vải Comfort (1.8L): 140.000đ/chai
# Túi rác tự hủy (50 túi): 30.000đ/gói
# Đèn pin sạc Comet: 120.000đ/cái"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_dodunggiadinh.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_dodunggiadinh.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """DO DUNG CHO BE
# Tã bỉm Pampers (size M, 62 miếng): 350.000đ/bịch
# Sữa bột NAN Optipro 4 (900g): 500.000đ/hộp
# Khăn ướt Mamamy (80 tờ): 40.000đ/gói
# Bình sữa Pigeon (240ml): 180.000đ/cái
# Phấn rôm Johnson’s Baby (100g): 45.000đ/hộp
# Dầu gội cho bé Chicco (500ml): 250.000đ/chai
# Yếm ăn silicone chống thấm: 90.000đ/cái"""

# qr = qrcode.QRCode(
#     version=8,  # QR lớn hơn (~53x53 ô)
#     error_correction=qrcode.constants.ERROR_CORRECT_H,  # Chịu lỗi cao hơn (30%)
#     box_size=15,  # Kích thước mỗi ô (~15px, hợp lý khi in hoặc hiển thị)
#     border=6  # Viền lớn hơn giúp dễ quét
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_dodungchoem.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_dodungchobe.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """TRÁI CÂY
# Nho đỏ Mỹ: 500.000đ/kg
# Táo Envy New Zealand: 700.000đ/kg
# Chuối sứ: 30.000đ/nải
# Cam sành: 60.000đ/kg
# Xoài cát Hòa Lộc: 80.000đ/kg
# Dưa hấu không hạt: 20.000đ/kg
# Dâu tây Đà Lạt: 250.000đ/kg"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_traicay.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_traicay.png'")
# -------------------------------------------------------------------
# import qrcode

# # Nội dung cần mã hóa trong QR (dữ liệu text)
# data = """TRÁI CÂY
# Nho đỏ Mỹ: 500.000đ/kg
# Táo Envy New Zealand: 700.000đ/kg
# Chuối sứ: 30.000đ/nải
# Cam sành: 60.000đ/kg
# Xoài cát Hòa Lộc: 80.000đ/kg
# Dưa hấu không hạt: 20.000đ/kg
# Dâu tây Đà Lạt: 250.000đ/kg"""

# qr = qrcode.QRCode(
#     version=1,  # Phiên bản QR (1 là nhỏ nhất, tối ưu cho text)
#     error_correction=qrcode.constants.ERROR_CORRECT_L,
#     box_size=10,  # Kích thước mỗi ô vuông trong QR
#     border=4  # Kích thước viền
# )

# qr.add_data(data)
# qr.make(fit=True)

# qr_image = qr.make_image(fill="black", back_color="white")
# qr_image.save("qr_traicay.png")

# print(" Mã QR đã được tạo và lưu thành 'qr_traicay.png'")
# -------------------------------------------------------------------
