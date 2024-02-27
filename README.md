# password-store
#### Usage
```sh
# insert a new password
pass insert <name> # single-line
pass insert -m <name> # multi-line

# edit an existing password
pass edit <name>

# list passwords
pass
# show password
pass <name>

# copy password to system clipboard
pass -c <name> # copy first line
pass -c[num] <name> # copy multi lines

# recursively encrypt an entire directory within the folder `sensitive` of password store
for file in $(find /path/to/dir -type f); do 
    pass insert -m "sensitive/$file" < "$file" > /dev/null 
done
```
Refer to [Pass](https://www.passwordstore.org) for more information.
