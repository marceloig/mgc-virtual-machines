variable "name" {
  description = "Nome da maquina virtual"
  type        = string
}

variable "machine_type" {
  description = "Tipo de máquina da instância da máquina virtual"
  type        = map(string)
  default = {
    "name" = "cloud-bs1.xsmall"
  }
}

variable "image" {
  description = "Imagem da instância da máquina virtual"
  type        = map(string)
  default = {
    "name" = "cloud-ubuntu-22.04 LTS"
  }
}

variable "network" {
  description = "Configuração de rede da instância da máquina virtual"
  type        = map(string)
  default = {
    "associate_public_ip" = true
    "delete_public_ip"    = false
  }
}

variable "ssh_key_name" {
  description = "Nome da chave SSH associada à instância da máquina virtual"
  type        = string
  default     = null
}

variable "ssh_key_name" {
  description = "Nome da chave SSH associada à instância da máquina virtual"
  type        = string
  default     = null
}

variable "user_data" {
  description = "Usado para executar tarefas de configuração automatizadas. Deve ser enviado no formato base64. (entre 1 e 65.000 caracteres)"
  type        = string
  default     = null
}