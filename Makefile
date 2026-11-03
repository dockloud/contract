export PATH := $(HOME)/.local/share/easyp-nightly/bin:$(PATH)

easyp:
	easyp mod tidy && \
    easyp generate && \
    easyp lint --path proto