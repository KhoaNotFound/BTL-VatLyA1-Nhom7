# BÁO CÁO BÀI TẬP LỚN VẬT LÝ A1 - BÀI 7
## MÔ PHỎNG CHUYỂN ĐỘNG NÉM NGANG TRONG TRỌNG TRƯỜNG

### 1. Thông Tin Chung
* **Môn học:** Vật lý A1
* **Đơn vị:** Bộ môn Vật lý Ứng dụng - Khoa KHUD - ĐHBK TP.HCM
* **Đề tài:** Bài 7 - Vẽ quỹ đạo chuyển động ném trong trọng trường và xác định thông số liên quan.
* **Ngôn ngữ thực hiện:** MATLAB

---

### 2. Mô Tả Bài Toán
Chương trình được xây dựng để giải quyết bài toán với các tham số cụ thể sau:
> "Một hòn đá được ném theo phương ngang từ độ cao $h = 20m$ với vận tốc ban đầu $v_0 = 15 m/s$. Lấy $g = 9.8 m/s^2$."

**Các yêu cầu cần tính toán và mô phỏng:**
1.  **Tỉ số vận tốc:** Tính $\frac{v_1}{v_2}$ (vận tốc tại t=1s và t=2s).
2.  **Gia tốc:** Tính gia tốc pháp tuyến ($a_n$) và gia tốc tiếp tuyến ($a_t$) tại thời điểm t=1s.
3.  **Đồ họa:** Vẽ mô phỏng quỹ đạo chuyển động của vật từ lúc ném đến khi chạm đất.

---

### 3. Hướng Dẫn Cài Đặt và Sử Dụng

#### Yêu cầu hệ thống
* Đã cài đặt phần mềm MATLAB.

#### Cách chạy chương trình
1.  Lưu file mã nguồn với tên `nemNgang.m`.
2.  Mở MATLAB, điều hướng đến thư mục chứa file.
3.  Tại cửa sổ **Command Window**, gõ lệnh:
    ```matlab
    nemNgang
    ```
4.  Nhập các thông số đầu vào khi chương trình yêu cầu:
    * `Nhập vào độ cao vật được ném:` **20**
    * `Nhập vào vận tốc ban đầu:` **15**

---

### 4. Giải Thích Thuật Toán (Code Logic)

Chương trình sử dụng phương pháp tính toán số học để giải quyết bài toán:

#### a. Thiết lập phương trình chuyển động
Sử dụng mảng thời gian `t` để tính tọa độ $(x, y)$ theo công thức:
* $x = v_0 \cdot t$
* $y = h - \frac{1}{2}g t^2$

#### b. Tính toán vận tốc và gia tốc
* **Vận tốc tức thời $v(t)$:**
    Được định nghĩa bằng hàm nặc danh (anonymous function):
    $$v(t) = \sqrt{v_0^2 + (gt)^2}$$

* **Gia tốc tiếp tuyến ($a_t$):**
    Sử dụng phương pháp **đạo hàm số** (numerical differentiation) với bước nhảy cực nhỏ ($h_{step} = 10^{-9}$) để đạt độ chính xác cao:
    $$a_t(t) \approx \frac{v(t + h_{step}) - v(t)}{h_{step}}$$

* **Gia tốc pháp tuyến ($a_n$):**
    Được tính dựa trên gia tốc toàn phần (trọng trường $g$) và gia tốc tiếp tuyến:
    $$a_n = \sqrt{g^2 - a_t^2}$$

#### c. Mô phỏng đồ họa
* Sử dụng vòng lặp `for` để vẽ từng vị trí của vật theo thời gian.
* Lệnh `plot` vẽ quỹ đạo (nét đứt) và vị trí vật (điểm tròn xanh).
* Lệnh `pause(0.03)` tạo hiệu ứng chuyển động mượt mà (animation).

---

### 5. Kết Quả Mong Đợi
Với bộ tham số đầu vào ($h=20m, v_0=15m/s$), chương trình sẽ xuất ra:

**1. Kết quả số (Command Window):**
* Tỉ số vận tốc $v_1/v_2$.
* Giá trị $a_t$ tại $t=1s$.
* Giá trị $a_n$ tại $t=1s$.

**2. Kết quả hình ảnh (Figure Window):**
* Đồ thị mô phỏng quỹ đạo parabol của vật rơi theo thời gian thực.

---

### 6. Tài Liệu Tham Khảo
1.  A. L. Garcia and C. Penland, *MATLAB Projects for Scientists and Engineers*, Prentice Hall, 1996.
2.  Giáo trình và tài liệu hướng dẫn thực hành Vật lý đại cương A1.