resource "aws_route_table" "rpublic" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags {
    Name = "publicnetwork"
  }
}

resource "aws_route_table" "rprivate" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "privatenetwork"
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = "${aws_subnet.public_a.id}"
  route_table_id = "${aws_route_table.rpublic.id}"
}

resource "aws_route_table_association" "public_b" {
  subnet_id      = "${aws_subnet.public_b.id}"
  route_table_id = "${aws_route_table.rpublic.id}"
}

resource "aws_route_table_association" "private_c" {
  subnet_id      = "${aws_subnet.private_c.id}"
  route_table_id = "${aws_route_table.rprivate.id}"
}

resource "aws_route_table_association" "private_d" {
  subnet_id      = "${aws_subnet.private_d.id}"
  route_table_id = "${aws_route_table.rprivate.id}"
}
