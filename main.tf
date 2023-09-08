resource "local_file" "ress1"{
    filename = "rajnish.txt"
    content = "Hiii this is Raaz"
    file_permission = "0777"
}

resource "local_file" "ress2"{
    filename = var.res01
    content = var.res02
    file_permission = var.res03
}

