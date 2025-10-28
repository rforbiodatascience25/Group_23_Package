test_that("Edge case: Numeric Input", {
  expect_equal(transcription(2.0), '2')
})
test_that("Edge case: Boolean Input", {
  expect_equal(transcription(TRUE), 'URUE')
})
test_that("Edge case: NA", {
  expect_equal(transcription(NA), as.character(NA))
})
test_that("Edge case: empty DNA", {
  expect_equal(transcription(''), '')
})
test_that("No Thymine", {
  expect_equal(transcription('ACGACGAGG'), 'ACGACGAGG')
})
test_that("Only One Character", {
  expect_equal(transcription('AAAAAAAAA'), 'AAAAAAAAA')
})
test_that("Only One Character", {
  expect_equal(transcription('G'), 'G')
})
test_that("Normal Input", {
  expect_equal(transcription('ACACGTAGTTA'), 'ACACGUAGUUA')
})
test_that("Normal Input", {
  expect_equal(transcription('TGATCGATTTGCC'), 'UGAUCGAUUUGCC')
})
test_that("No DNA sequence", {
  expect_equal(transcription('THESE ARE NOT ALL NUCLEOTIDES.'), 'UHESE ARE NOU ALL NUCLEOUIDES.')
})
test_that("smaller case", {
  expect_equal(transcription('these are not all nucleotides.'), 'these are not all nucleotides.')
})
