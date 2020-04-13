# Debug Box

> Docker container with debugging tools 

## Usage

```
./debug.sh container-to-debug network-name
```

The above command builds and attaches the debugging docker container to the same cgroup target container. The debug container runs with special privileges that allow it to run commands like `strace`. 


