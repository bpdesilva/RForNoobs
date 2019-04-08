# nrow = rows
# ncol = columns 
# 3 x 3 matrix using numbers 9 to 1
matrix(9:1, nrow = (3),ncol = (3))
# dimnames = dimension names
# list = keyword to create lists
# c = Combine Values Into A Vector Or List
# byrow = If FALSE (the default) the matrix is filled by columns, otherwise the matrix is filled by rows.
# 3 x 3 matrix using numbers 9 to 1
matrix(9:1,byrow = TRUE, nrow = (3),ncol = (3), dimnames=list(c("x","y","z"),c("a","b","c")))
# 5 x 5 matrix using numbers 1 to 20
matrix(1:20, byrow = TRUE, nrow = (5), dimnames=list(c("u","v","x","y","z"),c("a","b","c","d")))