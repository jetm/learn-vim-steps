# Learn Vim Steps by Steps

[Presentation in PDF format](https://github.com/jetm/learn-vim-steps/raw/master/learn-vim-steps.pdf)

To see it as [reveal.js](https://github.com/hakimel/reveal.js) presentation,
follow these steps:

Build:

```sh
$ docker build -t learn-vim-steps .
```

Run:

```sh
$ docker run --rm -v "$(pwd)/slides/:/revealjs/slides/" -p 8001:8000 learn-vim-steps
```

Presentation made with https://github.com/hakimel/reveal.js.

## License

CC0 1.0 Universal (CC0 1.0)
Public Domain

For more information, please see
<http://creativecommons.org/publicdomain/zero/1.0/>.
