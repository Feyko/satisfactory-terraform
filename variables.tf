variable gameport {
  type        = number
  default     = 7777
  description = "The port used by the game when playing"
}

variable beaconport {
  type        = number
  default     = 15000
  description = "The beacon port of the game"
}

variable queryport {
  type        = number
  default     = 15777
  description = "The query port hit when you first connect to the server"
}

variable maxplayers {
  type        = number
  default     = 8
  description = "The max number of concurrent players on the server"
}

variable ip {
  type        = string
  default     = "0.0.0.0"
  description = "The ip the server binds to"
}

variable experimental {
  type        = bool
  default     = false
  description = "Use the Experimental branch or not"
}

variable skipupdates {
  type        = bool
  default     = false
  description = "Skip updates. Highly discouraged"
}

variable datadir {
  type        = string
  description = "Where to save the server data. Includes game files, saves and config"
}

variable container_name {
  type        = string
  default     = "satisfactory-server"
  description = "The name of the container created for the server"
}
