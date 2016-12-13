#!/bin/sh -x

BASE=$(readlink -f $(dirname "$0")/..)

pushd $BASE
	~/bin/bundle exec jekyll serve --incremental
popd