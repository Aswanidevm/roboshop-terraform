module test {
    for_each = var.component
    source = "git::https://github.com/Aswanidevm/tf-module-app.git"
    env = var.env
    component = each.key
} 