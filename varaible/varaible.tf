varaible "sample" {
   default = "hello world"
}
output "sample" {
  value = "var.sample"
}
varaible "sample1" {}

output "sample1" {
  value = var.sample1
}