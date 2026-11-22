# The match runs this with no network, a read-only root (writable /tmp), 1 CPU, 512 MB, and the map at /arena.
FROM oven/bun:1.4.4-slim
WORKDIR /bot
ENV MF_ARC=1
ENV MF_RANK=1
ENV MF_SCOOP=1
ENV MF_AIMRANGE=1
ENV MF_ANTI_LTG=1
ENV MF_LASERPRO=1
ENV MF_SEAT_GATE=1
COPY . .
ENTRYPOINT ["bun", "/bot/bot.ts"]
