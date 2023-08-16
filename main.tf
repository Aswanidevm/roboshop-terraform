# module ec2 {
#     for_each = var.component
#     source = "git::https://github.com/Aswanidevm/tf-module-app.git"
#     env = var.env
#     component = each.key
#     tags = merge(each.value["tags"], var.tags)
# } 




module ec2 {
    for_each = var.vpc
    source = "git::https://github.com/Aswanidevm/tf-module-vpn.git"
    env = var.env
    cidr_blocks = each.value["cidr_blocks"]
    tags = merge(each.value["tags"], var.tags)
} 

