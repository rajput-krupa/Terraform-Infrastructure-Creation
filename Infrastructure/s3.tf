# This is a s3 bucket

resource aws_s3_bucket infra_bkt {
    bucket = "${var.env}-infra-bucket"

    tags = {
        Name = "infra-bucket"
        Environment = var.env
    }
}
