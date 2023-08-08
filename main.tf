module ec2 {
    for_each = var.component
    source = "git::https://github.com/Aswanidevm/tf-module-app.git"
    env = var.env
    component = each.key
    instance_type = lookup(each.value, "instance_type", "t2.micro" )
} 