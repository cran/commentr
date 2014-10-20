

context("help_functions")


test_that("full_line", {
  expect_that(full_line(1), prints_text("#"))
  expect_that(full_line(10), prints_text("##########"))
  expect_that(full_line(10, token = "%"), prints_text("%%%%%%%%%%"))
  expect_that(full_line("a4portrait"), prints_text("#############"))
})


test_that("empty_line", {
  expect_that(empty_line(1), prints_text("# #"))
  expect_that(empty_line(10), prints_text("#        #"))
  expect_that(empty_line(10, token = "%"), prints_text("%        %"))
})


test_that("comment_start", {
  expect_that(comment_start(), prints_text(""))
  expect_that(comment_start(TRUE), prints_text("<!--"))  
})



test_that("comment_end", {
  expect_that(comment_end(), prints_text(""))
  expect_that(comment_end(TRUE), prints_text("-->"))  
})



