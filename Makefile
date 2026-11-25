# Physics study base: quantum theory down to devices and circuits.
.DEFAULT_GOAL := help
ROOT := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

include mk/common.mk
include study/study.mk
