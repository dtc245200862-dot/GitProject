# AI Prompt Log - Activity 450

## 1. Tìm hiểu CSS Grid

Câu hỏi: Làm thế nào dùng CSS Grid để tạo Mosaic Gallery gồm một ảnh lớn bên trái và hai ảnh nhỏ xếp dọc bên phải?

Kết quả: Dùng `display: grid`, chia cột bằng `grid-template-columns: 2fr 1fr`, tạo hai hàng và cho ảnh chính dùng `grid-row: span 2`. Trên mobile có thể đổi về `grid-template-columns: 1fr`.

## 2. Tìm hiểu Flexbox

Câu hỏi: Làm thế nào căn giữa avatar, tên tác giả và nút chia sẻ theo chiều dọc bằng Flexbox?

Kết quả: Dùng `display: flex`, `align-items: center`, `justify-content: space-between` và `flex-wrap: wrap`. Avatar và thông tin tác giả được đặt trong một flex-container nhỏ.

## 3. Tìm hiểu Bootstrap Spacing

Câu hỏi: Các utility spacing như `mt-3`, `pb-2`, `gap-3` của Bootstrap dùng để làm gì?

Kết quả: Đây là các lớp hỗ trợ tạo khoảng cách. `mt-3` tạo margin phía trên, `pb-2` tạo padding phía dưới và `gap-3` tạo khoảng cách giữa các phần tử trong flex/grid.

## 4. Tìm hiểu Bootstrap Breakpoints

Câu hỏi: Làm thế nào tạo danh sách 4 bài viết trên desktop, 2 bài mỗi hàng trên tablet và 1 bài mỗi hàng trên mobile?

Kết quả: Dùng `col-12 col-md-6 col-lg-3`. Bootstrap tự áp dụng 1 cột trên màn hình nhỏ, 2 cột từ breakpoint md và 4 cột từ breakpoint lg.
