resource "local_file" "preconfig_file" {
  content  = "${join("", data.template_file.preconfig_privatelan.*.rendered)}"
  filename = "ansible/preconfig/preconfig.yml"
}