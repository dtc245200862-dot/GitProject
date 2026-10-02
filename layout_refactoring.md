# Layout Refactoring - CreativeChronicle

## Báo cáo Audit

Trang cũ có 3 điểm chết chính. Thứ nhất, `float` dùng cho thanh tác giả làm các phần tử khó căn giữa theo chiều dọc và phải dùng kỹ thuật clear/clearfix để tránh hiện tượng phần tử cha không bao trọn nội dung float. Flexbox phù hợp hơn vì có thể căn chỉnh trực tiếp bằng `align-items` và `justify-content`.

Thứ hai, Mosaic Gallery dùng `position: absolute` và chiều cao cố định 400px. Phần tử absolute được đưa ra khỏi luồng layout thông thường nên phần tử cha không tự tăng chiều cao theo nội dung. Khi màn hình nhỏ, các ảnh dễ chồng lên nhau và che phần nội dung phía dưới. CSS Grid giải quyết bài toán này bằng hệ thống hàng và cột, không cần tính toán vị trí bằng pixel.

Thứ ba, danh sách bài viết dùng `float` kết hợp width phần trăm thủ công. Cách này khó kiểm soát khi kích thước màn hình thay đổi. Bootstrap Grid với `col-12 col-md-6 col-lg-3` giúp danh sách tự chuyển từ 1 cột trên mobile, 2 cột trên tablet và 4 cột trên màn hình lớn.

## Thiết kế responsive

- Desktop: Author dùng Flexbox; Gallery dùng Grid 2 cột; Recommended có 4 cột.
- Tablet: Recommended tự chuyển thành 2 cột nhờ `col-md-6`.
- Mobile: Author cho phép xuống dòng bằng `flex-wrap`; Gallery chuyển thành 1 cột; Recommended chuyển thành 1 cột nhờ `col-12`.
