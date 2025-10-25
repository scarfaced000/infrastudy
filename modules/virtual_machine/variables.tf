variable "vm_name" {
  description = "가상머신의 이름"
  type        = string
}


variable "location" {
  description = "리소스가 배포되는 지역"
  type        = string
}

variable "resource_group_name" {
  description = "리소스 그룹 이름"
  type        = string
}

variable "subnet_id" {
  description = "VM이 배포될 서브넷 ID"
  type        = string
}
variable "vm_size" {
  description = "가상머신 크기"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "VM 관리자 사용자명"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6OuIrxpIBw14+4vgArIYbZCRySDg4bEXmIHq1r2zkSQmp+c4cr3k8etl8mGSsSo5TqVTpH5hdZZWxLe7RfRD51RABfGL5FpXo/0Wl4uGlfmLeP3Ls7fYJLbMu9Fba4XFM3tdw5JuaEQSWw3OhQQJPFA0PXyl3Pud0tA+PkCTI7p7Fb73C/avQ7I9lBxfbeV6wVxT6II9ysKYpJ2GM9lS6V+LnLOqjdRF6u/qbvrYB+VY7sc/5MunCb2qnKK9nM/UhD9K7tdXeT9BswzXQ3lgRTx1cagv/3n1gYEWjfZcIvsU1bPBSKQrLmBLXdTMf6rbMxYpZf5qVbqEWNbvGN06oOlK6WgjyhlXpeCEm62o6KkriD1kaK9JjzJ0N4K9q0JZFBMjAz9+3bNJb4in7drSJiTDOa5GnBVG+L0CDTVsYk8hTBbvNyU2lmHYAsKrI/6V/nyDbPmsBhf5l8Uvb/mgsqTI9J/frdZ3FWpgMnm6MR/+DyOrL/OjjOagrPKDqyR3edx/kDctr32fPMgjuqFXz1hJF9SLCM0sEu7xcNCs82yGeoiNP85TyrK2kS3uyp6Pg/5AouiYRTLthTs39Q7dyeX8i+qo6FA/pfZNIgA5uTpT8rw1D0LgeohM+S8W/7ueQPZrDtPG302hhqGwUVVV9ejPsowe1o0tS2UBplj6ENQ== chaelimjlee@DESKTOP-CFUD3ES"
  type        = string
}


