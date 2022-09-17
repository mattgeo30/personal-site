FROM node:12-alpine
# Adding build tools to make yarn install work on Apple silicon / arm64 machines
RUN apk add --no-cache git make clang build-base g++ python3
WORKDIR /mattgeo/apps
COPY . .
RUN yarn workspaces focus
CMD ["node", "src/index.html"]