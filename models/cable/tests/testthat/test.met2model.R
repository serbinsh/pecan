context("met2model")

outfolder <- tempfile()
setup(dir.create(outfolder, showWarnings = FALSE))
teardown(unlink(outfolder, recursive = TRUE))

test_that("Met conversion runs without error", {
  nc_path <- system.file("test-data", "CRUNCEP.2000.nc",
                         package = "PEcAn.utils")
  in.path <- dirname(nc_path)
  in.prefix <- "CRUNCEP"
  start_date <- "2000-01-01"
  end_date <- "2000-12-31"
  testthat::expect_error({
    result <- met2model.CABLE(in.path, in.prefix, outfolder)
  }, "NOT IMPLEMENTED")
  skip("met2model.CABLE not implemented")
  expect_s3_class(result, "data.frame")
  expect_true(file.exists(result[["file"]][[1]]))
})
