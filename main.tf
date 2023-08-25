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
    subnets = each.value["subnets"]
    default_vpc_id = var.default_vpc_id
    env = var.env
    tags = var.tags
}
 
 
module "app-server" {
   
    source = "git::https://github.com/Aswanidevm/tf-module-app.git"
    component= "test"
    env = var.env
    vpc_id = lookup(lookup(module.vpc,"main", null), "vpc_id", null)
    tags = var.tags
    subnet_id = lookup(lookup(lookup(lookup(module.vpc,"main",null), "subnet_ids",null), "app",null),"subnet_ids",null)[0]
    vpc_id =lookup(lookup(module.vpc,"main",null), "vpc_id", null)
}