# vim-presentation

Presentation showing Vim magic

Build:

```sh
$ docker build -t vim-slidesshow .
```

Run:

```sh
$ docker run --rm -v "$(pwd)/md:/revealjs/md" -p 8001:8000 vim-slidesshow
```

## TODO

- [ ] Create index
