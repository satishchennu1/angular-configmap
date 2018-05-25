#!/bin/bash

config=${NG_CONFIG:-production}
ng serve --host 0.0.0.0 --configuration ${config}
