# ime_seqfilter
A docker image providing the SeqFilter tool

## Usage

The docker image provides the `SeqFilter` tool. It will run the `SeqFilter` command as entrypoint.
Therefore, running a container is as easy as:

```
docker run --rm greatfireball/ime_seqfilter --version
```

Just provide all required parameters via command line.
Default working directory is `/data`.
Therefore, input data should be mounted using `/data` volume.

Another example using `--min-length 10k` and `--base-composition N` as parameter and the test file from SeqFilter as input:

```
docker run --rm greatfireball/ime_seqfilter --min-length 10k --base-composition N /opt/SeqFilter/test.fa
```

Running the command to get the information for a local file `localfile` in the current folder:

```
docker run --rm -v $PWD:/data greatfireball/ime_seqfilter --min-length 10k --base-composition N localfile
```

## Releases

The master branch contains a rolling release.
The develop branch is used for further development.
Specific tags are used for different SeqFilter releases. Latest release is [![](https://images.microbadger.com/badges/version/greatfireball/ime_seqfilter:2.1.9.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:2.1.9 "Get your own version badge on microbadger.com").

| Version/Branch | Commit in Docker Repo | Image |
| -------------- | --------------------- | ----- |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_seqfilter:master.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:master "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_seqfilter:master.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:master "Get your own commit badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_seqfilter:master.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:master "Get your own image badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_seqfilter:develop.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:develop "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_seqfilter:develop.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:develop "Get your own commit badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_seqfilter:develop.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:develop "Get your own image badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_seqfilter:2.1.9.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:2.1.9 "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_seqfilter:2.1.9.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:2.1.9 "Get your own commit badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_seqfilter:2.1.9.svg)](https://microbadger.com/images/greatfireball/ime_seqfilter:2.1.9 "Get your own image badge on microbadger.com") |
