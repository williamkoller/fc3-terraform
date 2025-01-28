resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content  = var.conteudo
}

variable "conteudo" {
  type = string
}

output "id-do-arquivo" {
  value = resource.local_file.exemplo.id
}

output "conteudo-do-arquivo" {
  value = var.conteudo
}

output "chicken-egg" {
  value = sort(["🐔","🥚"])
}