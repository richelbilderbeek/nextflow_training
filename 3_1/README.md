## Errors

```
Error executing process > 'INDEX'

Caused by:
  Process `INDEX` terminated with an error exit status (126)

Command executed:

  salmon index --threads 1 -t transcriptome.fa -i salmon_index

Command exit status:
  126

Command output:
  (empty)

Command error:
  docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/create?name=nxf-n96Touay6K06mfZiV5FaBIlK": dial unix /var/run/docker.sock: connect: permission denied.
  See 'docker run --help'.

Work dir:
  /home/richel/GitHubs/nextflow_training/3_1/work/30/b1b93d88910ce6d95eb95d995e67e4

Tip: you can replicate the issue by changing to the process work dir and entering the command `bash .command.run`
```

## Solution

From [here](https://stackoverflow.com/a/48957722):

```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```
