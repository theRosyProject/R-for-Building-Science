"Hello Cal!" # this is an explict print

5 # this is a number.. 

is.numeric(5) # this is a number.. 

typeof(5) # but what kind of number??

# Can I force to have another representation?
typeof( as.integer(5) )
print( as.integer(5) ) # we need to explicitly invoke the "print" function
typeof( as.character(5) )
print( as.character(5) )

for (i in 1:5) {print(i)}

i <- 0 # safe behavior... and, by the way, this is a comment!... moreover, this is a "variable assignment"!
while (i <= 5) {print(i); i <- i + 1}

"Hello"
'Hello'
"You should pay \"attention\".. "
"You should pay 'attention'.. "
'You should pay "attention".. '
'You should pay \'attention\'.. '

`Hello` # backticks quote are used for non-standard variables.. and you should ask Tom what he think about them

`why not be fun!` <- 11 
`why not be fun!` # https://stat.ethz.ch/R-manual/R-devel/library/base/html/make.names.html
dumb_df_names <- data.frame(NAME = c("Bob", "Alice"), SURNAME= c("Geldof", "White"), `MIDDLE NAME` = c("Gigi", "Kathy"))
dumb_df_names$NAME
dumb_df_names$SURNAME
dumb_df_names$MIDDLE.NAME
dumb_df_names[1,] # I can see Tom suffering... he don't like matrix notation

### Addition
2 + 2

### Substraction
5 - 1

### Multiplication
2 * 2

### Division
20 / 5

### Exponential
2 ^ 2

16 ^ 0.5

sqrt(16) # this is the first time we see a function!

### Some particular divisions
5 / 2
5 %/% 2 ##FEDE## This returns the integer part of the division
5 %% 2 ##FEDE## This returns the remainder

1 / 0.2
1 %/% 0.2 ##FEDE## What?! Why?! https://stat.ethz.ch/R-manual/R-devel/library/base/html/Arithmetic.html



assign("variableName", 2) # https://stat.ethz.ch/R-manual/R-devel/library/base/html/assign.html
variableName

myVariable <- 2
myVariable 
myVariable <- "ciao"
myVariable

nr_days_week <- 7
nr_days_week # auto-print the value of the name variable
nr_days_week <- "seven"
nr_days_week
# We can use both = and <- as assignment operators. But... 
# <- is preferred in most cases because the = operator can be forbidden in some context
# Also... is nicer from the math point of view: next example.

i = 1 # make sense here .. 
while (i <= 5) {print(i); i = i + 1} # i = i + 1 ??? Some picky people decided to go for i <- i + 1

# going "inception"
i <- n <- 1 
while (i <= 3 ) {
    for (j in 1:3 ) {
        for (k in 1:3) {
            print(paste0(i, "-", j, "-", k))
            n <- n + 1
        }
    }
    i <- i + 1
}
print((n - 1))

expand.grid(rep(list(1:3),3)) # permutations with repetitions ! n^k
#?expand.grid()

# combinations without repetitions, the lottery where 6 out of 49 balls are chosen
combn(1:49, 6)


# not so easy to win.. 
factorial(49) / ( factorial(6) * factorial(49 - 6) )
# or using a function
choose(49, 6)

1 == 1
1 != 1
1 > 1
1 >= 1
1 < 1
1 <= 1

### Make some variable assignment and then try some if-else statements:
a <- 1
b <- 2
a == 1 & b == 2
if (a == 1 & b == 2) {
    print("Good")
    #"good! without calling print()"
} else {
    print("Bad")
}
a > 1 & b == 2
a > 1 | b == 2

### Compare strings
"Ciao" == "Ciao"
"Ciao" == "Ciao " ##FEDE## look for tricky typo
"Ciao" == "ciao"  ##FEDE## case-sensitive

"tom" > "richard"

charToRaw("t") # https://www.asciitable.com

charToRaw("r")

"a" < "A"
charToRaw("a")
charToRaw("A")

# https://stackoverflow.com/questions/71684102/how-string-comparison-works-in-r

paste("Hello", " ", "World", "!") # extra spaces!

paste0("Hello", " ", "World", "!") # this gives you more control

paste("Hello", dumb_df_names$NAME[1], "!", "How are you?") # again.. spaces sometime are messy

paste0("Hello ", dumb_df_names$NAME[2], "! ", "How are you?")

# complicate to show why this could be handy:
for (i in 15:30) { # we are talking of °C.. right?
    if (i <= 22) {
        print(paste0("The temperature is, ", i, " °C and ", dumb_df_names$NAME[1], " feels cold!"))
    } else if (i <= 26) {
        print(paste0("The temperature is, ", i, " °C and ", dumb_df_names$NAME[1], " is comfortable!"))
    } else {
        print(paste0("The temperature is, ", i, " °C and ", dumb_df_names$NAME[1], " feels too warm!"))
    }
}

# convert to F
for (i in 15:30) { # but keep this is °C.. 
    if (i <= 22) {
        print(paste0("The temperature is, ", ( (i * 9/5) + 32 ), " °F and ", dumb_df_names$NAME[1], " feels cold!"))
    } else if (i <= 26) {
        print(paste0("The temperature is, ", ( (i * 9/5) + 32 ), " °F and ", dumb_df_names$NAME[1], " is comfortable!"))
    } else {
        print(paste0("The temperature is, ", ( (i * 9/5) + 32 ), " °F and ", dumb_df_names$NAME[1], " feels too warm!"))
    }
}

CBE_people <- c("Tom", "Carlos", "Fede")

"Fede" %in% CBE_people

which(CBE_people == "Fede")

dumb_numeric_vect <- c(1,2,3,4,5,6,7,8,9,0)

mixed_list <- c(1,"2",3,4,5)
mixed_list2 <- list(1,"2",3,4,5)

str(mixed_list) # converted to the "higher"
str(mixed_list2) # a list can contain many different data types
str(dumb_list)



















round(2.5, digits = 0) ##FEDE## What?! Why?! https://stat.ethz.ch/R-manual/R-devel/library/base/html/Round.html
round(2.6, digits = 0) 

floor(2.5)
ceiling(2.5)
trunc(2.7)
signif(2.5, digits = 0)

source(file = "timeseries/script.r")

c(a,b,c)






