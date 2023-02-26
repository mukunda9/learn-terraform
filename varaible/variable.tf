variable "sample" {
   default = "hello world"
}
output "sample" {
  value =var.sample
}
variable "sample1" {}

output "sample1" {
  value =var.sample1
}
variable "cli" {}

output "cli" {
  value = var.cli
}

variable "input" {}
output "input" {
  value=var.input
}
variable "sample5" {
  default = "hallo"
}
variable "sample6" {
  default=["halloo,1000"]

}
variable "sample7" {
  type="hello",
  number=100,
  boolean=true

}
output "types" {
  value = "varaible sample5=${var.sample5},first value in list =${var.sampl6[0]},boolean value of sample7=${var.sample7[boolean]}"
}