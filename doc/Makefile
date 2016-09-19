include ../config.mk

templates=delayed_pushd.conf.tmpl

objects=$(templates:.tmpl=)

all: $(objects)

%: %.tmpl
	@echo "Generating $@"
	@echo $(PREFIX) | sed 's/\//\\\//g' > /tmp/.template
	@sed "s/__PREFIX__/`cat /tmp/.template`/g" $< > $@
	@rm -f /tmp/.template

clean:
	rm -rf $(objects)

install: all
	cp $(objects) ../dist/conf/

