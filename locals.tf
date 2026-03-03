locals {
    common_tags ={
        project = var.project
        Environment = var.environment
        Terraform = "true"
    }

    vpc_final_tags =  merge (
        local.common_tags,
        {
        name = "${var.project}-${var.environment }"
        },
        var.vpc_tags 

  )

}