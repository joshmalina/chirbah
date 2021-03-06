#!/usr/bin/env bash

timestamp=\'$(date +"%Y-%m-%d"T"%H:%M:%S")\'

title=$1

OUTPUT="---
layout: post
title: $title
date: $timestamp
author: Josh Malina
tags:
description:
---
"

today=$(date +"%Y-%m-%d")

hyphenized="${title// /_}"
filename="../_posts/$today-$hyphenized.markdown"

printf %s "${OUTPUT}" >> $filename
