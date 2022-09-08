# StdErr e StdOut

| Sintaxe        | StdOut p/ Terminal | StdErr p/ Terminal | StdOut p/ Arquivo | StdErr p/ Arquivo | Arquivo    |
| -------------- | ------------------ | ------------------ | ----------------- | ----------------- | ---------- |
| ``>``          | não                | sim                | sim               | não               | substitui  |
| ``>>``         | não                | sim                | sim               | não               | incrementa |
| ``2>``         | sim                | não                | não               | sim               | substitui  |
| ``2>>``        | sim                | não                | não               | sim               | incrementa |
| ``&>``         | não                | não                | sim               | sim               | substitui  |
| ``&>>``        | não                | não                | sim               | sim               | incrementa |
| ``\| tee``     | sim                | sim                | sim               | não               | substitui  |
| ``\| tee -a``  | sim                | sim                | sim               | não               | incrementa |
| n.e. (*)       | sim                | sim                | não               | sim               | substitui  |
| n.e. (*)       | sim                | sim                | não               | sim               | incrementa |
| ``\|& tee``    | sim                | sim                | sim               | sim               | substitui  |
| ``\|& tee -a`` | sim                | sim                | sim               | sim               | incrementa |

## List

command > output.txt

The standard output stream will be redirected to the file only, it will not be visible in the terminal. If the file already exists, it gets overwritten.

command >> output.txt

The standard output stream will be redirected to the file only, it will not be visible in the terminal. If the file already exists, the new data will get appended to the end of the file.

command 2> output.txt

The standard error stream will be redirected to the file only, it will not be visible in the terminal. If the file already exists, it gets overwritten.

command 2>> output.txt

The standard error stream will be redirected to the file only, it will not be visible in the terminal. If the file already exists, the new data will get appended to the end of the file.

command &> output.txt

Both the standard output and standard error stream will be redirected to the file only, nothing will be visible in the terminal. If the file already exists, it gets overwritten.

command &>> output.txt

Both the standard output and standard error stream will be redirected to the file only, nothing will be visible in the terminal. If the file already exists, the new data will get appended to the end of the file..

command | tee output.txt

The standard output stream will be copied to the file, it will still be visible in the terminal. If the file already exists, it gets overwritten.

command | tee -a output.txt

The standard output stream will be copied to the file, it will still be visible in the terminal. If the file already exists, the new data will get appended to the end of the file.

(*)

Bash has no shorthand syntax that allows piping only StdErr to a second command, which would be needed here in combination with tee again to complete the table. If you really need something like that, please look at "How to pipe stderr, and not stdout?" on Stack Overflow for some ways how this can be done e.g. by swapping streams or using process substitution.

command |& tee output.txt

Both the standard output and standard error streams will be copied to the file while still being visible in the terminal. If the file already exists, it gets overwritten.

command |& tee -a output.txt

Both the standard output and standard error streams will be copied to the file while still being visible in the terminal. If the file already exists, the new data will get appended to the end of the file.
