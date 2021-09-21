module "user" {
  source = "./modules/user"
  user = var.user_data
}

module "policy" {
  source = "./modules/policy"
  user = var.user_data
}


module "bucket" {
 source = "./modules/bucket"
  bucket   = var.bucket
  
  
}