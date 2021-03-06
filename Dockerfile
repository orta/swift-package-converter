
FROM kylef/swiftenv
RUN swiftenv install DEVELOPMENT-SNAPSHOT-2016-06-06-a

WORKDIR /package
VOLUME /package
EXPOSE 8080

# mount in local sources via:  -v $(PWD):/package

CMD swift build && .build/debug/App
