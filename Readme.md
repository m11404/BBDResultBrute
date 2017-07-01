# What ?
Simple Script which can be used to brute force to get results from Babu Banarasi Das University website. 

# How
The script exploits following facts
- Page doesn't has proper validation for Full Student Name and Full Mother's name.
- There is not restriction on number of invalid requests from single IP.
- Common prefix of indian mother names can be arranged in following order `dsmrnbigaceptjfhklouvwqxyz` which helps in reaching results faster than alphabetical order.
- Roll Numbers are mostly increasing order of names.


# Executing 
Open terminal and execute
`bash brute.bash ROLLNO NAME'S FIRST LETTER`

example:
`bash brute.bash 1140432000 A`
