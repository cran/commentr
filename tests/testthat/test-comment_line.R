

context("comment_line")


test_that("Correct output", {
  expect_that(comment_line(10), prints_text("##########"))
  expect_that(comment_line(10, token = "%"), prints_text("%%%%%%%%%%"))
  expect_that(comment_line(10, html = TRUE), prints_text("<!--"))
})

