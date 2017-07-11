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
___
"

today=$(date +"%Y-%m-%d")

filename="../_posts/$today-$title.markdown"

printf %s "${OUTPUT}" >> $filename
