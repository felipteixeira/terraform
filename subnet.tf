resource "aws_subnet" "public_a" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.5.1.0/24"
  availability_zone = "${var.region}a"

  tags {
    Name = "public_a"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.5.2.0/24"
  availability_zone = "${var.region}b"

  tags {
    Name = "public_b"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.5.3.0/24"
  availability_zone = "${var.region}c"

  tags {
    Name = "private_c"
  }
}

resource "aws_subnet" "private_d" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.5.4.0/24"
  availability_zone = "${var.region}d"

  tags {
    Name = "private_d"
  }
}
