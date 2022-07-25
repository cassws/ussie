test_that("uss_make_matches works", {

  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  # expect output of uss_make_matches() is a tibble
  expect_true(tibble::is_tibble(italy))

  # expect specific column names
  expected_colnames <- c("country", "tier", "season", "date"
                         ,"home", "visitor", "goals_home"
                         ,"goals_visitor")
  expect_named(italy, expected_colnames)

  # expect italy appears in country column
  # expect_identical(italy$country[1], "Italy")
  expect_identical(unique(italy$country), "Italy")

  expect_s3_class(italy$tier, "factor")

})
