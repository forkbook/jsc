.PHONY: install uninstall clean

target/debug/jsc: src/*.rs src/jsc/*.rs
	cargo build

install:
	cp ./target/debug/jsc /usr/local/bin/jsc

uninstall:
	rm /usr/local/bin/jsc

clean:
	rm -rf target build
