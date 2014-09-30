# From http://statmethods.wordpress.com/2014/06/19/quickly-export-multiple-r-objects-to-an-excel-workbook/
# r save objects to excel spreadsheet

# save.xlsx("myworkbook.xlsx", mtcars, Titanic, AirPassengers, state.x77)

save.xlsx <- function (file, ...)
{
    require(xlsx, quietly = TRUE)
    objects <- list(...)
    fargs <- as.list(match.call(expand.dots = TRUE))
    objnames <- as.character(fargs)[-c(1, 2)]
    nobjects <- length(objects)
    for (i in 1:nobjects) {
        if (i == 1)
            write.xlsx(objects[[i]], file, sheetName = objnames[i])
        else write.xlsx(objects[[i]], file, sheetName = objnames[i],
                        append = TRUE)
    }
    print(paste("Workbook", file, "has", nobjects, "worksheets."))
}
