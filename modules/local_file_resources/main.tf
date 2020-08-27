resource "local_file" "preconfig_file" {
  count = "${terraform.workspace != "dev" && terraform.workspace !="stage" ? 1 : 0}"
  content  = "${join("", data.template_file.preconfig_privatelan.*.rendered)}"
  filename = "ansible/preconfig/preconfig.yml"
}
/*resource "null_resource" "map_test" {
  count            = length(var.map_test)
  provisioner "local-exec" {
    command = "mkdir ${var.map_test[count.index%3]}"
  }
    provisioner "local-exec" {
     when = "destroy"
     command = "cleanup.bat"
    }
    
}*/