#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Chua Hou

texmacs $(find . -type f -name '*.tm' | sed 's/\(.*\)\.tm/-c \1.tm \1.html/') -q
