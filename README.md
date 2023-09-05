# Ứng dụng Quản lý Nhiệm vụ (Task Manager)

Ứng dụng Quản lý Nhiệm vụ là một ứng dụng đơn giản được phát triển bằng Flutter để giúp bạn quản lý và theo dõi các nhiệm vụ hàng ngày của mình. 

Ứng dụng cho phép bạn tạo, chỉnh sửa và xóa các nhiệm vụ cũng như lên lịch các nhiệm vụ lặp lại hoặc cụ thể cho một ngày cụ thể.

## Các Tính Năng Chính

- Thêm mới nhiệm vụ với tiêu đề, ghi chú và thời gian bắt đầu/kết thúc. 
- Lên lịch các nhiệm vụ hàng ngày hoặc cho một ngày cụ thể.
- Chỉnh sửa hoặc xóa nhiệm vụ tồn tại.
- Chỉnh sửa theme giao diện dark mode hoặc light mode

## Ảnh Chụp Màn Hình

![Screenshot_1693945714](https://github.com/caonguyen21/TodoApp/assets/106511965/c40c30b1-4862-4ca7-b59f-484bc89a5634)

![Screenshot_1693945736](https://github.com/caonguyen21/TodoApp/assets/106511965/74699444-f88b-45ca-bfc7-6e55b92221e5)

![Screenshot_1693945758](https://github.com/caonguyen21/TodoApp/assets/106511965/3c4f9935-f974-4e95-a9da-b52b6fde3453)

![Screenshot_1693945751](https://github.com/caonguyen21/TodoApp/assets/106511965/91abb541-9a07-4323-9dca-4828e38f1423)

## Thư Viện và Công Cụ Sử Dụng

Ứng dụng được xây dựng bằng Flutter và sử dụng các thư viện và công cụ sau:

1. **get_storage**: Sử dụng để lưu trữ và quản lý dữ liệu cục bộ đơn giản, như cấu hình ứng dụng hoặc dữ liệu tạm thời.

2. **get**: Cho phép thực hiện các cuộc gọi API và tương tác với dịch vụ web thông qua HTTP requests.

3. **intl**: Sử dụng để định dạng và xử lý các chuỗi văn bản dựa trên ngôn ngữ và khu vực.

4. **google_fonts**: Được sử dụng để tùy chỉnh font chữ trong giao diện người dùng.

5. **date_picker_timeline**: Cung cấp giao diện chọn ngày từ một dãy thời gian.

6. **flutter_local_notifications**: Dùng để tạo và quản lý thông báo cục bộ.

7. **flutter_native_timezone**: Sử dụng để lấy thông tin về múi giờ cục bộ của thiết bị.

8. **permission_handler**: Sử dụng để kiểm soát và yêu cầu quyền truy cập như camera, vị trí và các quyền khác.

9. **flutter_staggered_animations**: Dùng để tạo hiệu ứng và animates cho danh sách hoặc giao diện người dùng.

10. **sqflite**: Sử dụng để thao tác với cơ sở dữ liệu SQLite, cho phép lưu trữ và truy vấn dữ liệu cục bộ.
