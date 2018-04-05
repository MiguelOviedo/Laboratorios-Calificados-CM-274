# Nombre : Miguel Angel Oviedo Rodriguez 20131463I
# Respuesta2
# (a)
m <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), nrow = 4, byrow = TRUE)
m

# (b)
m <- m[-4, ]
m

# (c)
m[,2] <- sort(m[,2])
m

# (d)
# R devuelve una matriz de 1x1 si el atributo drop (que elimina las dimensiones de la matriz) está en FALSE
m <- m[-4, -1, drop = FALSE]
m

# (e)
m2 <- matrix(c(m[3,], m[4,]), ncol = 2,  byrow = TRUE)
m2

# (f)

m3 <- m
m3[4,2] <- m2[1,1]*(-1/2)
m3[1,2] <- m2[1,1]*(-1/2)

m3 <-matrix(c(m[4,2], m[1,2], m[4,1], m[1,1]), ncol = 2, byrow = TRUE)
m3

# (g)
A <- diag(c(2,3,5,-1), 4, 4)
inv_A <- solve(A)
I_4 <- diag(4)

inv_A * A - I_4
