# Wildcards

A wildcard is a character or a string that is used to match file and directory names.

If a command accepts a file or directory as an argument, you can use a wildcard in the argument to specify a file or set of files.

- **asterisk**: '*' 
- **Question Mark**: '?'

Asterisk matches zero or more characters. It matches anything. For example, you could use '* .txt' to find all the files that end in .txt. Or to list all the files that start with the letter 'a' using 'a *'.

Question mark matches exactly one character. ?.txt matches all the file that have only one character preceding a txt.

## Character Classes

A character classes is used to create specific search patterns

- Starts with a left bracket 
- List one or more characters 
- End with right bracket

```sh
c[au]t # matches for cat or cut file

[!aeiou]* # ecludes first letter vowel files

[a-g] or [1-8] # Ranges
```

### Named Character Classes

Predefined Character Classes. Represent the most commonly used ranges.

```sh
[:alpha:] # Matches alphabetic, lower and uppercase

[:alnum:] # Matches alphanumeric characters.

[:digit:] # numbers, 0 to 9

[:lower:]

[:upper:]

[:space:] # Matches whitespace, spaces, tabs and newline characters
```

### Matching Wildcard Patterns

To match one of the wildcard characters then yoi would escape that character with a backslash.

It is a good practice not naming files with question marks and asterisks.

## Wildcard in Shell Scrippts

```sh
#!/bin/bash
cd /var/www
cp *.html /var/www-just-html
```

```sh
#!/bin/bash
cd /var/www
for FILE in *.html
do
    echo "Copying $FILE"
    cp $FILE /var/www-just-html
done
```
