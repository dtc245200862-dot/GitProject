# AI Prompt Log - Activity 447

## Prompt 1 - Chọn công cụ layout
Khi tôi cần một bố cục mà một phần tử con phải chiếm chính xác 2 hàng và 2 cột, nên chọn CSS Grid hay Flexbox? Vì sao?

**Kết quả:** Chọn CSS Grid vì Grid quản lý đồng thời hàng và cột, hỗ trợ `grid-column: span 2` và `grid-row: span 2`. Flexbox chủ yếu xử lý một chiều.

## Prompt 2 - Bootstrap Grid
Trong Bootstrap 5, `col-sm-4` và `col-md-4` khác nhau thế nào? Vì sao Bootstrap phù hợp với Pricing?

**Kết quả:** Cả hai đều chiếm 4/12 cột từ breakpoint tương ứng trở lên. Pricing là layout 3 cột chuẩn nên Bootstrap giúp triển khai nhanh và giảm CSS tùy chỉnh.

## Prompt 3 - Responsive Navbar
Làm thế nào dùng `flex-wrap: wrap` để Navbar trên điện thoại tự đẩy menu xuống dòng mà không che Logo?

**Kết quả:** Cho Navbar `display: flex`, `flex-wrap: wrap`, `gap` và cho khu vực menu cũng có `flex-wrap: wrap`. Ở màn hình nhỏ có thể cho menu rộng 100%.

## Prompt 4 - gap
Thuộc tính `gap` có thể dùng cho Flexbox và Grid như thế nào?

**Kết quả:** `gap` tạo khoảng cách giữa các phần tử mà không cần thêm margin cho từng phần tử. Điều này giúp CSS sạch và dễ thay đổi.
