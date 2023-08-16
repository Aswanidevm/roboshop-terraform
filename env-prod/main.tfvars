env = "prod"
component = {
    frontend = {
        tags = {
            monitor ="true"
            env = "prod"
        }
    }
    mongodb = {
        tags = {
            env = "prod"
        }
    }
    catalogue = {
        tags = {
            monitor ="true"
            env = "prod"
        }
    }
    redis = {
        tags = {
            env = "prod"
        }
        }
    user = {
        tags = {
            monitor ="true"
            env = "prod"
        }
    }
    cart = {
        tags = {
            monitor ="true"
            env = "prod"
        }
    }
    mysql = {
        tags = {
            env = "prod"
        }
    }
    shipping = {
        tags = {
            monitor ="true"
            env = "prod"
        }
    }
    rabbitmq = {
        tags = {
            monitor ="true"
            env = "prod"
        }
    }
    payment = {
        tags = {
            monitor ="true"
            env = "prod"
        }
    }
    dispatch = {
        tags = {
            monitor ="true"
            env = "prod"
        }
    }
}


tags= {
    company_name = "XYZ tech"
    business = "ecommerce"
    business_unit = "retail"
    cost_center = "322"
    project_name = " roboshop"
}

vpc ={
    main = {
        cidr_block = "10.20.0.0/16"
    }
}