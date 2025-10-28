test_that("make_codons splits sequence correctly", {
  expect_equal(
    make_codons("AUGGCAUGA", start = 1),
    c("AUG", "GCA", "UGA")
  )
})

test_that("make_codons respects start positiong", {
  expect_equal(
    make_codons("AUGGCAUGA", start = 2),
    c("UGG", "CAU")
  )
})

test_that("make_codons works with short sequences", {
  expect_equal(
    make_codons("AUG", start = 1),
    c("AUG")
  )
})

test_that("make_codons returns an error if the sequence length is < 3", {
  expect_error(make_codons("AU", start = 1))
})

test_that("make_codons returns an error if the start value is a string", {
  expect_error(make_codons("AUGCGA", start = "a"))
})


test_that("make_codons returns an error if start position is > than sequence length", {
  expect_error(make_codons("AUGCGA", start = 7))
})
