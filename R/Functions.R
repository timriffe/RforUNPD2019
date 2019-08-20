# this is a note

# In this file, let's collect our functions.

# We wrote those functions while sitting in an 
# Rmarkdown environment. Because that's somehow
# more didactic. But really, probably, what you 
# want is to stick them all in here.

library(magrittr)
# These are single purpose lifetable functions.
mxax_to_qx <- function(mx, ax){
  qx            <- mx / (1 + (1 - ax) * mx)
  qx[length(qx)] <- 1
  return(qx)
}

qx_to_px <- function(qx){
  px <- 1 - qx
  return(px)
}

px_to_lx <- function(px, radix = 1){
  lx <- cumprod(px)
  lx <- radix * c(1, lx)
  lx <- lx[1:length(px)]
  # lx[-(length(px) + 1)]
  lx
}

lxqx_to_dx <- function(lx, qx){
  dx <- lx * qx
  return(dx)
}

lx_to_dx <- function(lx){
  dx <- -diff(c(lx,0))
  return(dx)
}

mxax_to_dx <- function(mx, ax){
  qx <- mxax_to_qx(mx = mx, ax = ax)
  lx <- px_to_lx(1 - qx)
  dx <- lxqx_to_dx(qx = qx, lx = lx)
  return(dx)
}

lxax_to_Lx <- function(lx, ax){
  dx <- lx_to_dx(lx)
  Lx <- lx - (1 - ax) * dx
  return(Lx)
}

lxaxdx_to_Lx <- function(lx, ax, dx){
  Lx <- lx - (1 - ax) * dx
  return(Lx)
}

Lx_to_Tx <- function(Lx){
  Tx <- 
    Lx %>% 
    rev() %>% 
    cumsum() %>% 
    rev()
  return(Tx)
}

Txlx_to_ex <- function(Tx, lx){
  ex <- Tx / lx
  return(ex)
}

# end