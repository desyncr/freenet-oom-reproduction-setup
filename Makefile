FREENET_ROOT ?=/Applications/Freenet
FREENET_BASE ?=/Applications/Freenet-base

help:
	@echo "make start / make stop / make status ; make probe / make repro ; make clean"
start:
	@${FREENET_ROOT}/run.sh start
stop:
	@${FREENET_ROOT}/run.sh stop
status:
	@${FREENET_ROOT}/run.sh status
probe:
	@sh ./node-probe.sh
repro:
	sh ./freenet-1481-OOM-reproduction.sh-osx
clean:
	rm *.log
	rm -rf .gradle/
	rm *.jar

