# syntax=docker/dockerfile:1
FROM alpine:latest AS build

# Install make build tool & musl-dev for std headers
RUN apk add --no-cache make musl-dev

WORKDIR /lua_src

COPY . .

RUN make test all

FROM alpine:latest AS runtime

# Base Dir: /usr
COPY --from=build /lua_src/build/bin/lua /lua_src/build/bin/luac /usr/bin/
COPY --from=build /lua_src/src/lua.h /lua_src/src/luaconf.h /lua_src/src/lualib.h /lua_src/src/lauxlib.h /lua_src/src/lua.hpp /lua_src/src/luac /usr/include/
COPY --from=build /lua_src/build/bin/liblua.a /usr/lib/
COPY --from=build /lua_src/doc/lua*.1 /usr/man/man1/

ENV PATH=/usr/bin/lua:$PATH

ENTRYPOINT [ "lua" ]
CMD [ "-v" ]