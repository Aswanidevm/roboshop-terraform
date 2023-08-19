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
    tags = var.tags
    subnet_id = lookup(lookup(lookup(module.vpc,"subnet_ids",null), "main","subnet_ids",null), "app","subnet_ids"[0])
    # module.vpc.subnet_ids.main.subnet_ids.app.subnet_ids[0]
}