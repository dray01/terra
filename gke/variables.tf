module "variables" { source = "../variables" }

variable "pool_00_min_count" {
  default = {
    primary = 3
  }
}

variable "pool_00_max_count" {
  default = {
    primary = 10
  }
}