test_that("lenght is correct", {
  expect_equal(nchar(build_dna(20)), 20)
})


test_that("input is a string", {
  expect_error(build_dna(""))
})

test_that("input is numeric", {
  expect_equal(nchar(build_dna(10.3)), 10)
})

test_that("empty input", {
  expect_equal(nchar(build_dna()), 4)
})

test_that("input is 0", {
  expect_equal(build_dna(0), "")
})

test_that("output is an string", {
  expect_type(build_dna(12L), "character")
})



