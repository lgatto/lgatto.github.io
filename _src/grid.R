## Musee: https://museel.be/
## exposition: https://museel.be/fr/evenement/visite-guidee/decouvrir-lexposition-grid-0


plotSquare <- function(x, y, width) {
    x1 <- x - (width / 2)
    y1 <- y - (width / 2)
    x2 <- x1 + width
    y2 <- y1 + width
    rect(x1, y1, x2, y2)
}

## Number of squares
nsq <- 10

## amount of square jittering
amount <- 1.2

## border ratio
ratio <- 0.2

sq_w <- (100 / nsq) * (1 - ratio)
border_w <- (100 - (nsq * sq_w)) / (nsq + 1)

pos <- seq(border_w, 100 - border_w,
           length.out = nsq)


par(mar = rep(1, 4), oma = rep(0, 4))
plot(-2:(100 - border_w + 2), -2:(100 - border_w + 2),
     type = "n", axes = FALSE,
     xlab = "", ylab = "",
     frame.plot = FALSE)
for (y in pos) {
    pos_x <- jitter(rep(y, nsq), amount = amount)
    pos_y <- jitter(pos, amount = amount)
    plotSquare(pos_x, pos_y, sq_w)
}
