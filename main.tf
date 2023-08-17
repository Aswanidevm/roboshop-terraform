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

    # azs             = ["eu-east-1a", "eu-east-1b"]
    subnets = each.value["subnets"]
    

    tags = var.tags
}
 

