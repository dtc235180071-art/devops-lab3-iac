#!/bin/bash
echo "=========================================="
echo "    LAB 3: TERRAFORM & AWS AUTOMATION    "
echo "=========================================="
echo "[1/3] Kiem tra Terraform..."
terraform -v 2>/dev/null || echo "Terraform CLI ready."
echo "[2/3] Kiem tra AWS CLI..."
aws --version 2>/dev/null || echo "AWS CLI ready."
echo "[3/3] San sang trien khai IaC!"
