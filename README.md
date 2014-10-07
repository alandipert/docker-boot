# Boot Docker Image

A **highly experimental** boot image based on Debian Wheezy,
[Oracle JDK8](https://github.com/pandeiro/docker-oracle-jdk8), and the
[v2-nevergreen](v2-nevergreen branch) of the
[boot build tool](https://github.com/tailrecursion/boot/tree/v2-nevergreen)
for [Clojure](http://clojure.org)

## Build

```bash
git clone https://github.com/alandipert/docker-boot && cd docker-boot
docker build -t 'boot' .
```
## Pre-built

```bash
docker pull alandipert/boot
```

## Example Use Cases

These all assume you're using the alandipert/boot image; otherwise
replace that with the name of your custom-built image.

### Boot REPL

```bash
alias repl='docker run -i -t alandipert/boot repl'
repl
```

### Boot Project-specific REPL

```bash
cd /path/to/project
alias project-repl="docker run -i -t -v $PWD:/project alandipert/boot repl"
project-repl
```

### Thanks

* To [Murphy McMahon](https://github.com/pandeiro) for the [docker-lein](https://github.com/pandeiro/docker-lein) project, on which this is based.

