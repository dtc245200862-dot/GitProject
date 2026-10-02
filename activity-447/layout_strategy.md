# Layout Strategy - MetricsHub

## Audit

- **Navbar -> Flexbox:** Navbar là bố cục 1 chiều. Flexbox tự co giãn theo nội dung và khoảng trống, nên không cần chia cột bằng pixel cố định.
- **Dashboard -> CSS Grid:** Bento Dashboard là bố cục 2 chiều. Grid cho phép widget chiếm nhiều cột hoặc nhiều hàng bằng `span`, đồng thời giữ cấu trúc HTML phẳng và dễ bảo trì.
- **Pricing -> Bootstrap:** Bảng giá chỉ cần 3 cột chuẩn. `row` và `col-12 col-md-4` của Bootstrap giúp 3 cột trên màn hình vừa/lớn và tự xếp dọc trên mobile.

## Kết luận

CSS Grid phù hợp với layout tổng thể có cả hàng và cột. Flexbox phù hợp với việc căn chỉnh các phần tử theo một chiều trong từng component. Hai kỹ thuật có thể kết hợp: Dashboard dùng Grid, còn nội dung bên trong từng widget có thể dùng Flexbox.
