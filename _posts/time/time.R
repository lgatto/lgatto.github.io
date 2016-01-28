.drawtime <- function() {
    plot(0, 0, xlab = "", ylab = "",
         xaxt = "n", yaxt = "n",
         xlim = c(-1, 1),
         ylim = c(-1, 1),
         bty = "n")
    for (i in 1:60) {
        i <- i * 6
        abline(0, tan(deg2rad(i)), col = "grey")
    }
    for (i in seq(0, 25, 5)) {
        i <- i * 6
        abline(0, tan(deg2rad(i)))
    }
    symbols(0, 0, circles = 10, inches = 3, add = TRUE)
}

deg2rad <- function(deg, min = 0)
    (deg + min/60) * pi/180

rad2deg <- function(rad)
    (rad * 180)/pi

deg2slope <- function(deg, min = 0) {
    rad <- deg2rad(deg, min)
    sl <- tan(rad)
    sl
}

hr2xy <- function(h, min = 0) {
    hrs <- seq(90, -240, -30)
    names(hrs) <- 0:11
    deg <- hrs[as.character(h)]
    deg <- deg - min * 30/60
    y <- deg2slope(deg)
    if (h >= 0 & h < 6) x <- 1
    else x <- -1
    if (h >= 9 | h < 3) y <- abs(y)
    else y <- -abs(y)
    structure(c(x, y),
              names = c("x", "y"))
}

min2xy <- function(m) {
    mins <- seq(90, -264, -6)
    names(mins) <- 0:59
    deg <- mins[as.character(m)]
    y <- deg2slope(deg)
    if (m >= 0 & m <= 30) x <- 1
    else x <- -1
    if (m >= 45 | m <= 15) y <- abs(y)
    else y <- -abs(y)
    structure(c(x, y),
              names = c("x", "y"))
}

timexy <- function(h, m) {
    hxy <- hr2xy(h, m)
    hxy <- hxy/(2 * max(abs(hxy)))
    mxy <- min2xy(m)
    mxy <- mxy/max(abs(mxy))
    orig <- c(0, 0)
    a <- as.numeric(dist(rbind(orig, mxy)))
    b <- as.numeric(dist(rbind(orig, hxy)))
    c <- as.numeric(dist(rbind(mxy, hxy)))
    ## c^2 = a^2 + b^2 - 2ab * cos(C)
    ## 2ab * cos(C) =  a^2 + b^2 - c^2
    ## cos(C) = (a^2 + b^2 - c^2)/2ab
    ## C = acos((a^2 + b^2 - c^2)/2ab)
    angle <- acos((a^2 + b^2 - c^2)/(2 * a * b))
    list(hxy = hxy,
         mxy = mxy,
         angle = rad2deg(angle))
}

drawtime <- function(h, m) {
    .drawtime()
    xy <- timexy(h, m)
    hxy <- xy$hxy
    mxy <- xy$mxy
    segments(0, 0, hxy[1], hxy[2], lwd = 6, col = "red")
    title(main = paste0(h, ":", sprintf("%02d", m)))
    segments(0, 0, mxy[1], mxy[2], lwd = 2, col = "blue")
    points(hxy[1], hxy[2], pch = 19, cex = 4, col = "red")
    points(mxy[1], mxy[2], pch = 19, cex = 4, col = "blue")
    text(hxy[1], hxy[2], h)
    text(mxy[1], mxy[2], sprintf("%02d", m), col = "white")
    title(sub = paste("Angle: ", round(xy$angle, 2), "degrees."))
}



animation::saveHTML({
    for (h in 0:11) {
        for (m in 0:59) {
            drawtime(h, m)
            Sys.sleep(.25)
        }   
    }}, img.name = "time", htmlfile = "time.html",
    ani.height = 700, ani.width = 700,
    verbose = FALSE)
dev.off()


res <- expand.grid(hour = 0:11,
                   min = 0:59)
res$angle <- apply(res, 1,
                   function(x) timexy(x[1], x[2])$angle)
res$delta <- res$angle - 90

res <- res[order(abs(res$delta)), ]
head(res)

par(mfrow = c(2, 2))
apply(res[1:4, ], 1,
      function(x) drawtime(x[1], x[2]))


for (h in 8) {
    for (m in 0:59) {
        drawtime(h, m)
        Sys.sleep(.25)
    }   
}

