# module ec2 {
#     for_each = var.component
#     source = "git::https://github.com/Aswanidevm/tf-module-app.git"
#     env = var.env
#     component = each.key
#     tags = merge(each.value["tags"], var.tags)
# } 




module vpc {
    for_each = var.vpc
    source = "git::https://github.com/Aswanidevm/tf-module-vpn.git"
    # env = var.env
    cidr_block = each.value["cidr_block"]
    # tags = merge(each.value["tags"], var.tags)
} 

