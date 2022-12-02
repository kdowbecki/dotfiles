# Using GDB with Java on Fedora

Disable SEGV handling, see [this answer](https://stackoverflow.com/a/44540848/1602555):

> The HotSpot JVM uses the SEGV signal internally for a few different things
> (NullPointerException, safepoints, ...) so this is most likely not an error.
> When debugging HotSpot, it is useful to tell gdb to let the application handle the SEGV signal

```
echo "handle SIGSEGV pass noprint nostop" >> ~/.gdbinit
```

To enable [Debuginfod](https://fedoraproject.org/wiki/Debuginfod):

```
echo "set debuginfod enabled on" >> ~/.gdbinit
```

