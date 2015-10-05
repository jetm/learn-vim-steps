# vim-presentation

Presentation to teach Vim in a fast way.

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
