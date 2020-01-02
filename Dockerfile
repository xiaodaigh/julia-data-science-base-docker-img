FROM julia:1.3

COPY install_packagecompilerx.jl .

RUN apt-get update && \
	apt-get install build-essential -y && \
	julia install_packagecompilerx.jl && \
	apt-get remove build-essential -y && \
	apt-get autoremove -y && \
	apt-get clean -y

CMD ["julia"]
