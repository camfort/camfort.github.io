.PHONY: default
default: all
all: index team publications projects

index: index-inner.html
	cat template.html | sed -e '/<!-- INNER -->/ {' -e 'r index-inner.html' -e 'd' -e '}' > index.html

team: team-inner.html
	cat template.html | sed -e '/<!-- INNER -->/ {' -e 'r team-inner.html' -e 'd' -e '}' > team.html

publications: publications-inner.html
	cat template.html | sed -e '/<!-- INNER -->/ {' -e 'r publications-inner.html' -e 'd' -e '}' > publications.html

projects: projects-inner.html
	cat template.html | sed -e '/<!-- INNER -->/ {' -e 'r projects-inner.html' -e 'd' -e '}' > projects.html
