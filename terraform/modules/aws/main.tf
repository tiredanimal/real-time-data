resource "aws_kinesis_stream" "this" {
  name             = "${var.name}-${var.env}"
  shard_count      = 1
  retention_period = 24
}
