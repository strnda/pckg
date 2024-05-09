test_that("hello world test", {
  expect_true(object = {
    x <- hello()
    is.character(x = x)
  })
})

