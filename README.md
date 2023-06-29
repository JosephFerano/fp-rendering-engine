# FP Rendering Engine

## About

TLDR; [Play it here](https://ferano.io/3d-fp/

The goal of this project is to learn about the intersection of 3 different
topics; graphics, web, and functional programming. The FP acronym refers to both
the fact that it's a First Person camera, as well as being implemented using
Functional Programming. It uses Elm with WebGL to create a basic 3D first-person
scene implementing several lower level graphics techniques including matrix
transformations to model parent/child local transforms, texture mapping, and
basic lighting with shaders. Consider it the humble beginnings of a functional
3D graphics engine. The last major work done on this was in 2019, however, it
was just thrown into a git repo without much consideration, along with other
another small graphics project. I felt it deserved a little bit more TLC than
that. Here's the original
[project](https://github.com/JosephFerano/elm-graphics).

## Showcase

!["FPS Scene"](screenshots/elm-fps.png)


## Building with Elm 0.18.0

To install the binaries manually, follow this short guide;
- [Install Binaries](https://sirfitz.medium.com/install-elm-0-18-0-in-2021-3f64ce298801)

If you want to use `npm` instead;
- `npm install -g elm@elm0.19.0`

If you use `npm`, note that you will likely need an older version of Node.js, so
it is recommended to use [`npm`](https://github.com/nvm-sh/nvm) for that.

Once you have the Elm compiler, go ahead and run

```elm make Scene.elm```

And that should first pull in all the dependencies then generate an `index.html` file.

### Issues with dependencies

It seems like one of the dependencies for this project, `Zinggi/elm-obj-loader`,
is getting a 404. Therefore this dependency will be included in version control,
on the off chance someone actually wants to build this.

## Running

In order to be able to load the textures and models, the files must be served
by an HTTP server because of browser security, see
[SOP](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy)
and [CORS](https://developer.mozilla.org/en-US/docs/Glossary/CORS) if curious.

If you have Python 3 installed, simply run `python3 -m http.server`. If you
would like to use `elm-reactor`, run the command and then click on `index.html`
in the nice project webview provided.

## Controls

- Look Around: `Mouse`

- FPS Movement: `WASD`

- Robot Movement: `◀ ▼ ▲ ▶`

- Rotate Robot: `N | M`

- Rotate Robot Arm: `Y | H`

- Rotate Robot Hand: `U | J`


## License

This project is licensed under the terms of the MIT license. For more
information, see the included LICENSE file.


