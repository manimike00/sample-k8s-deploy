source "azure-arm" "autogenerated_1" {
  azure_tags = {
    dept = "Engineering"
    task = "Image deployment"
  }
#  client_id                         = var.client_id
#  client_secret                     = var.client_secret
  image_offer                       = "UbuntuServer"
  image_publisher                   = "Canonical"
  image_sku                         = "16.04-LTS"
#  location                          = var.location
  managed_image_name                = var.managed_image_name
  managed_image_resource_group_name = var.resource_group
  os_type                           = "Linux"
  subscription_id                   = var.subscription_id
#  tenant_id                         = var.tenant_id
  vm_size                           = var.vm_size
}

build {
  sources = ["source.azure-arm.autogenerated_1"]

  provisioner "file" {
    source      = "../index.html"
    destination = "/tmp/index.html"
  }
  provisioner "shell" {
    execute_command = "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'"
    inline          = ["apt-get update", "apt-get upgrade -y", "apt-get -y install nginx", "mv /tmp/index.html /var/www/html/index.nginx-debian.html", "/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync"]
    inline_shebang  = "/bin/sh -x"
  }

}