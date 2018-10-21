
context("testing add element to sorted vector")

v <- c(1:4,6)
x <- 5


test_that("checking for erroneous input", {
  
  expect_error(add_element_to_sorted_vector("hej", 5))
  expect_error(add_element_to_sorted_vector(c(1:4,6), "five"))
  
})


test_that("checking if vector is returned", {
  
  ans <- add_element_to_sorted_vector(v,x)
  expect_true(is.vector(ans))
  expect_equal(ans, c(1,2,3,4,5,6))
  
})