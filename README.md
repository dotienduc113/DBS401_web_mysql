Website lỗ hổng DBS401 - Hướng dẫn cài đặt
- Backend: Python - Django, Frontend: HTML + CSS
- Database: MySQL

Yêu cầu: Database (dễ nhất)
- Cài đặt xampp (https://www.apachefriends.org/download.html)
- Mở xampp chạy mysql và http (port 3306 và 80)
- Truy cập vào localhost/phpmyadmin (tài khoản mặc định: root - mật khẩu: để trống)
- Tạo database tên fruit 
![1](https://github.com/dotienduc113/DBS401_web_mysql/assets/112946375/c9818ad1-be97-4b26-b8d8-70cd4bad4600)


Hướng dẫn cài đặt (windows):
- cài git + mở cmd
- git clone https://github.com/dotienduc113/DBS401_web_mysql/
- cd DBS401_web_mysql/my_sale_web
- install.bat (để cài các module cần thiết python)
- chạy các lệnh sau để đồng bộ db và tạo tài khoản admin
+ Đồng bộ database py manage.py migrate
  ![2](https://github.com/dotienduc113/DBS401_web_mysql/assets/112946375/6288c3d1-61e5-46c2-bca8-e43fdeec5a60)
+ Tạo tài khoản admin: py manage.py createsuperuser - tự nhập tài khoản mật khẩu
  ![3](https://github.com/dotienduc113/DBS401_web_mysql/assets/112946375/fd523897-b3d6-45fc-aa50-177285732f64)

- run.bat để chạy server local
- truy cập vào localhost:8000

