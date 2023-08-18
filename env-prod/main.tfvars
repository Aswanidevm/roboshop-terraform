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



vpc = {
    main =  {
        cidr_block = "10.20.0.0/16"
        subnets = {
            web = { cidr_block = ["10.20.0.0/24", "10.20.2.0/24"] }
            app = { cidr_block = ["10.20.1.0/24", "10.20.4.0/24"] }
            db = { cidr_block = ["10.20.3.0/24", "10.20.6.0/24"] }
            public = {cidr_block = ["10.20.5.0/24", "10.20.7.0/24"] }
        }
    }
}