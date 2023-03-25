output "bucket_name" {
  value = aws_s3_bucket.remote-state.bucket

}

output "bucket_arn" {
  value = aws_s3_bucket.remote-state.arn

}

output "bucket_domain_name" {
  value = aws_s3_bucket.remote-state.bucket_domain_name
}
