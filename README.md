# Ứng dụng Quản lý Nhiệm vụ (Task Manager)

Ứng dụng Quản lý Nhiệm vụ là một ứng dụng đơn giản được phát triển bằng Flutter để giúp bạn quản lý và theo dõi các nhiệm vụ hàng ngày của mình. 

Ứng dụng cho phép bạn tạo, chỉnh sửa và xóa các nhiệm vụ cũng như lên lịch các nhiệm vụ lặp lại hoặc cụ thể cho một ngày cụ thể.

## Các Tính Năng Chính

- Thêm mới nhiệm vụ với tiêu đề, ghi chú và thời gian bắt đầu/kết thúc. 
- Lên lịch các nhiệm vụ hàng ngày hoặc cho một ngày cụ thể.
- Chỉnh sửa hoặc xóa nhiệm vụ tồn tại.
- Chỉnh sửa theme giao diện dark mode hoặc light mode

## Ảnh Chụp Màn Hình

![1](https://github.com/caonguyen21/TodoApp/assets/106511965/a47c7d81-ffbf-4f54-9f41-6e122fe20dc7)

![2](https://github.com/caonguyen21/TodoApp/assets/106511965/128c5191-ee25-452a-9c69-8313e6478e15)

![860shots_so](https://github.com/caonguyen21/TodoApp/assets/106511965/93f12a2c-0c6b-4405-b7b3-890a05677e3e)

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
