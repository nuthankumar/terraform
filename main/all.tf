
module "local_file" {
  source                  = "../modules/local_file_resources"
  environment              = "${terraform.workspace}"
}