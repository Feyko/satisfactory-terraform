terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "2.15.0"
        }
    }
}

module "server" {
    source = "alinefr/module/docker"
    version = "4.0.1"

    image = "ghcr.io/wolveix/satisfactory-server/satisfactory-server:v1.0.0"
    container_name = var.container_name
    restart_policy = "unless-stopped"

    ports = [
        {
            internal = 15777
            external = var.queryport
            protocol = "udp"
        },
        {
            internal = 15000
            external = var.beaconport
            protocol = "udp"
        },
        {
            internal = 7777
            external = var.gameport
            protocol = "udp"
        }
    ]

    environment = [
        "MAXPLAYERS=${var.maxplayers}",
        "SERVERIP=${var.ip}",
        "SKIPUPDATE=${var.skipupdates}"
    ]

    host_paths = {
        "${var.datadir}" = {
            container_path = "/config"
            read_only = false
        }
    }
}