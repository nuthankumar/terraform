variable "environment" {
  description = "environment used"
}
variable "map_test" {
  type = map(string)
  description = "(optional) describe your variable"
  default = {
    0 = "val1"
    1 = "val2"
    2 = "val3"
    3 = "val4"
    4 = "val5"
    5 = "val6"
    6 = "val7"
    7 = "val8"
    8 = "val9"
  }
}