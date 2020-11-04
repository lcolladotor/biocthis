test_that("GitHub Actions R versions", {
    expect_equivalent(.GHARversion("RELEASE_3_12")["R"], "4.0")
    expect_equivalent(.GHARversion("RELEASE_3_11")["R"], "4.0")
    expect_equivalent(.GHARversion("RELEASE_3_12")["Bioc"], "3.12")
    expect_equivalent(.GHARversion("RELEASE_3_11")["Bioc"], "3.11")
})
