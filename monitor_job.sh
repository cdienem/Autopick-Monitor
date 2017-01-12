#!/bin/bash

#monitors a job (like 2d/3d class or refinement)
while [ 1 ]; do printf '\033c'; bpeek | egrep --color=never 'Expectation|Current|[0-9]/[0-9]'; sleep 600; done;
