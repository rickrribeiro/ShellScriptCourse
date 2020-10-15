#!/bin/bash
echo "digite o site"
read site;
echo head $(tracert $site)
