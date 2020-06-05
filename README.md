# Debug Box

> Docker container with debugging tools 

## Usage

```
./debug.sh container-to-debug network-name
```

The above command builds and attaches the debugging docker container to the same cgroup as the target container. The debug container runs with privileges that allow it to run commands like `strace`. 


