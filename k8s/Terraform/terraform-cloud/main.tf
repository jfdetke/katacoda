variable "stage" {
    default = "production"
}

resource "random_pet" "server" {
    keepers = {
        # generate new pet name, each time we switch stage
        stage = "${var.stage}"
    }
}

output "random_server_id" {
    value = random_pet.server.id
}
