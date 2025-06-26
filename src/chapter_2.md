# The Stages of Nix

When working with Nix, I find it helpful to think in terms of stages, similar to
how we talk about "compile-time" and "run-time" in other programming contexts.
For Nix, I break things down into four specialized stages:

## Stage 1---Nix

This is the world of Nix code itself. Nix is a functional, pure programming
language, and this stage is where everything begins. All relevant
inputs---source code, file paths, shell scripts, makefiles, Maven XML,
environment variables, configuration files, etc; are modeled as Nix expressions.

The key feature here is purity, which is another way of saying there are no side
effects. Evaluating a Nix expression has no side effects:
no writing to disk, no network calls, no user input. This is what makes Nix
evaluation deterministic. Aside from CPU usage, RAM allocation, or battery
drain, the evaluation is side-effect free—just like in Haskell.

Why is that useful? Because it lets you reason about Nix code like math. You can
evaluate large expressions with the guarantee they won’t suddenly write to disk
or download random tarballs mid-computation.

## Stage 2---bash

## Stage 3---store

## Stage 4---(sym)link
