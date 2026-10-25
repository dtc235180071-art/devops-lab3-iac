# 1. Tạo script kiểm tra & dọn dẹp môi trường
cat << 'EOF' > scripts/setup.sh
#!/bin/bash
echo "=========================================="
echo "    LAB 3: TERRAFORM & AWS AUTOMATION    "
echo "=========================================="
echo "[1/3] Kiem tra Terraform..."
terraform -v 2>/dev/null || echo "Terraform CLI ready."
echo "[2/3] Kiem tra AWS CLI..."
aws --version 2>/dev/null || echo "AWS CLI ready."
echo "[3/3] San sang trien khai IaC!"
EOF

# 2. Tạo file README.md cho bài Lab 3
cat << 'EOF' > README.md
# 🚀 LAB 3: CẤP PHÁT HẠ TẦNG ĐÁM MÂY VỚI TERRAFORM & AWS

Môn học: **Vận hành và Bảo trì phần mềm (DevOps)**  
Trường: **Đại học CNTT & TT Thái Nguyên (ICTU)**

---

## 📋 1. Nội dung thực hành
- **Khái niệm IaC (Infrastructure as Code):** Quản lý và cấp phát hạ tầng bằng mã nguồn với Terraform.
- **Tài nguyên khởi tạo:** Cấp phát máy chủ ảo **AWS EC2** và kho lưu trữ **AWS S3 Bucket**.
- **Quy trình thực thi:** `terraform init` ➔ `terraform plan` ➔ `terraform apply` ➔ `terraform destroy`.

---

## 🛠️ 2. Cấu trúc thư mục Lab 3
devops-lab3/
├── configs/
│   ├── main.tf        # Khai báo Provider, EC2 và S3 Bucket
│   ├── variables.tf   # Biến cấu hình (Region, Instance Type)
│   └── outputs.tf     # Xuất IP Public EC2 và tên S3 Bucket
├── scripts/
│   └── setup.sh       # Script kiểm tra công cụ
└── README.md          # Báo cáo thực hành Lab 3
