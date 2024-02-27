My [homepage](https://lgatto.github.io/about) and
[blog](https://lgatto.github.io/year-archive/). Also hosts the
[Computational Biology Unit's web presence](https://lgatto.github.io/cbio-lab/).

All content, unless explicitly stated, is published under a
[CC-BY](http://creativecommons.org/licenses/by/4.0/) license. You are
free to share (copy and redistribute the material in any medium or
format) and adapt (remix, transform, and build upon the material) for
any purpose, even commercially

Questions or comments. Open an
[issue](https://github.com/lgatto/lgatto.github.io/issues) or send an
email.


### Howto

- Add new posts to `_posts`
- Figures go into `images` and are referenced with
  `[Description](/images/fig.png]`.
- Assuming [jekyll] is installed, build locally with:

```
bundle exec jekyll build -d docs
```

- Check locally by opening `docs/index.html` or `docs/XXX/index.html`
  for pages and posts.

- Push to Github, where gh-pages is configured to render the content of `docs`.

- Check again, find typos and other issues, fix locally, build and
  push.

To serve locally:

```
bundle exec jekyll server --future --watch
```

- the `--future` tag will also build and serve future posts,
  i.e. forthcoming post that have a date in the future;
- the `--watch` tag allows to re-build the site automatically upon
  modification of post files. Very useful for fixing typos.
