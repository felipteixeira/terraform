provider "aws" {
  region = "${var.region}"
}

locals {
  tags {
    Name = "gunanetwork"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "${var.network}"

  tags {
    Name = "gunanetwork"
  }
}
