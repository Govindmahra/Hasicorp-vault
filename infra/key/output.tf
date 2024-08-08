output "private_key_file" {
  value = local_file.private_key_file
}

output "public_key_file" {
  value = aws_key_pair.public_key_pair
}

output "private_key_content" {
  value = local_file.private_key_file.content
  sensitive = true
}

output "public_key_content" {
  value = aws_key_pair.public_key_pair.public_key
}
