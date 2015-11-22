LOGWATCHDIR=/etc/logwatch

all:
	@echo "Try make install"

.PHONY: install
install: 
	@cp conf/logfiles/apcupsd.conf ${LOGWATCHDIR}/conf/logfiles/
	@cp conf/services/apcupsd.conf ${LOGWATCHDIR}/conf/services/
	@cp scripts/services/apcupsd ${LOGWATCHDIR}/scripts/services/

.PHONY: remove
remove:
	@rm -f ${LOGWATCHDIR}/conf/logfiles/apcupsd.conf
	@rm -f ${LOGWATCHDIR}/conf/services/apcupsd.conf
	@rm -f ${LOGWATCHDIR}/scripts/services/apcupsd
