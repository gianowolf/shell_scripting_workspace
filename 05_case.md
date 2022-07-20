# Case Statements

- Starts with the word case followed with an expression or variable and end the line with the word in
    - ```case "$VAR" in 
- list a pattern or value you want to test against the variable. End the pattern with a parenthesis
    - ```pattern_N)```
- End the commands with a double semicolon.
- End with ```esac``` word

## Example 1: Basic

```sh
case "$1" in
    start)
        /usr/sbin/sshd
    ;;
    stop)
        kill $(cat /var/run/sshd.pid)
    ;;
esac
```

## Example 2: Wildcards

```sh
case "$1" in
    start|START)
        /usr/sbin/sshd
        ;;
    stop|STOP)
        kill $(cat /var/run/sshd.pid)
        ;;
    *)
        echo "Usage: $0 start|stop"
        exit 1
        ;;
esac
```

```sh
read -p "Enter y or n:" ANSWER
case "$ANSWER" in
    [yY]|[yY][eE][sS])
        echo "You answered yes."
    ;;
    [nN]|[nN][oO])
        echo "You answered no."
esac
```
