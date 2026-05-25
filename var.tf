variable "myip" {

    default="10.0.0.1/32"
}

variable "instancetype" {
    default="t3.mciro"
}

variable "username" {
    type=list
    default= [ "devuser", "testuser"]
}

variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8200, 8201,8300, 9200, 9500]
}

variable "instances" {
    type = map
    default= {
      default ="t3.nano"
      dev="t3.micro"
      prd="t3.large"
      
    
    }
} 
