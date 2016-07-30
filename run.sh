#!/usr/bin/env bash

if [[ -z "${I_LIKE_TO_LIVE_DANGEROUSLY}" ]]; then
	echo "You don't like to live dangerously."
	echo "That's probably wise."
	exit -1
fi

gotty -w --address 0.0.0.0 --port "9111" \
	bash ./inner.sh
