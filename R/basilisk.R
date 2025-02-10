#' @import basilisk
my_env <- basilisk::BasiliskEnvironment(envname="my_env",
    pkgname="biocSCGPT",
    pip = "scgpt==0.2.1",
    packages=c("python==3.10")
)

#' just test
#' @export
test_scgpt = function() {
    proc = basilisk::basiliskStart(my_env)
    on.exit(basilisk::basiliskStop(proc))
    basilisk::basiliskRun(proc, function() {
      sc = reticulate::import("scgpt")
      names(sc)
    })
}
     
