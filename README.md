#mjf-battleship

Common Lisp version of the Battleship game

mjf-battleship is not available for download via quicklisp. Instead,
clone the repository, tell ASDF where to find the system definition,
and load the system with quicklisp:

```lisp
(ql:quicklisp "mjf-battleship")
```

Following that, the associated test package can be loaded with
quicklisp and run using ASDF:

```lisp
(ql:quickload "mjf-battleship-test")
(asdf:operate 'asdf:test-op :mjf-battleship-test)
```

License

mjf-battleship is distributed under the MIT license. See LICENSE.
