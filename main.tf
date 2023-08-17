# module ec2 {
#     for_each = var.component
#     source = "git::https://github.com/Aswanidevm/tf-module-app.git"
#     env = var.env
#     component = each.key
#     tags = merge(each.value["tags"], var.tags)
# } 




module "vpc" {
   
    source = "git::https://github.com/Aswanidevm/tf-module-vpc.git"
     for_each = var.vpc
   
    cidr_block = each.value["cidr_block"]
    
    env = var.env

    azs             = ["eu-east-1a", "eu-east-1b"]
    web_subnet_cidr_block = each.value["web_subnet_cidr_block"]
    # public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

    enable_nat_gateway = true
    enable_vpn_gateway = true

    tags = var.tags
}
 

