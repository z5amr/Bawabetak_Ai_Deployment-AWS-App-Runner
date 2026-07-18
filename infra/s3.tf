resource "aws_s3_bucket" "model_artifacts" {
  bucket = "${var.service_name}-models-${random_id.bucket_suffix.hex}"
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}