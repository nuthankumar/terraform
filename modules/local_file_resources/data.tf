data "template_file" "preconfig_privatelan" {
  template = file("./templates/preconfig/preconfig.tpl")
  vars = {
    environment                 = var.environment
  }
}