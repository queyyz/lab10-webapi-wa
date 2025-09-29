67543210070-8 ธนพลตรีรัตนานุภาพ

# Lab10-WebAPI

โปรเจ็กต์นี้เป็น **Web API สำหรับจัดการข้อมูลสินค้า (Products)** ด้วย PHP + MySQL บน XAMPP  
สามารถ **ดู เพิ่ม แก้ไข และลบสินค้า** ได้ ข้อมูลส่งออกในรูปแบบ **JSON**

---

## 1. โครงสร้างโฟลเดอร์โปรเจ็กต์

lab10-api/
├── config.php # ตั้งค่าเชื่อมต่อฐานข้อมูล
├── api.php # Web API หลัก
└── lab10_webapi.sql # ไฟล์ฐานข้อมูลพร้อมข้อมูลตัวอย่าง

markdown
คัดลอกโค้ด

---

## 2. การติดตั้ง

1. ติดตั้ง **XAMPP** และเปิด **Apache** และ **MySQL**  
2. วางโฟลเดอร์ `lab10-api` ที่ `C:\xampp\htdocs\`  
3. นำไฟล์ `lab10_webapi.sql` ไป **Import** ใน **phpMyAdmin**  
   - เปิด [http://localhost/phpmyadmin](http://localhost/phpmyadmin)  
   - คลิก **Import → เลือกไฟล์ → กด Go**  
4. แก้ไขไฟล์ `config.php` หากมีการตั้งค่าฐานข้อมูลแตกต่างจากเดิม

---

## 3. การเรียกใช้งาน API

<img width="1506" height="932" alt="image" src="https://github.com/user-attachments/assets/af304e16-8b27-425d-ae9d-5979ec9d3971" />

<img width="1537" height="708" alt="image" src="https://github.com/user-attachments/assets/2927f240-a49b-41ba-a52f-d14f443e2657" />

<img width="1129" height="885" alt="image" src="https://github.com/user-attachments/assets/a0155d17-f50b-4ae9-9cfb-25eb7112ca89" />

<img width="1525" height="780" alt="image" src="https://github.com/user-attachments/assets/1190621d-5c50-4c65-9242-7e8becbed267" />

<img width="1423" height="699" alt="image" src="https://github.com/user-attachments/assets/3676f0d7-fb1c-4494-b8b8-71dbbf62452f" />
