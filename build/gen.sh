#!/bin/bash

curpath=$(cd "$(dirname "$0")"; pwd)
out="$curpath"/..
path_to_thrift=$curpath/../../../evernote/evernote-thrift/src/

thrift --gen go:package=evernote --out "$out" "$path_to_thrift"/Errors.thrift
thrift --gen go:package=evernote --out "$out" "$path_to_thrift"/Limits.thrift
thrift --gen go:package=evernote --out "$out" "$path_to_thrift"/NoteStore.thrift
thrift --gen go:package=evernote --out "$out" "$path_to_thrift"/Types.thrift
thrift --gen go:package=evernote --out "$out" "$path_to_thrift"/UserStore.thrift
