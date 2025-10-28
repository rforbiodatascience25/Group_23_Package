test_that("Normal codons", {
  expect_equal(translation(c("AUG", "CCU", "CAA", "CGA", "UGG", "GGC")), "MPQRWG")
})

test_that("Same codon", {
  expect_equal(translation(c("CCU", "CCU", "CCU", "CCU", "CCU", "CCU")), "PPPPPP")
})


test_that("Wrong number of dimensions in input", {
  expect_error(translation("CCU", "GGA"))
})


test_that("Empty input", {
  expect_equal(translation(), "FSYCFSYCLS__LS_WLPHRLPHRLPQRLPQRITNSITNSITKRMTKRVADGVADGVAEGVAEG")
})

test_that("Boolean input", {
  expect_equal(translation(FALSE), "")
})


test_that("NA input", {
  expect_equal(translation(NA), "NANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANANA")
})

