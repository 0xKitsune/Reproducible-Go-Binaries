
BUILDNAME=yournamehere


linux-amd64-binary: 
	#Build the linux-binary image
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	#Run the linux-binary-image in a new container called linux-binary
	docker run --name linux-binary  linux-binary-image
	#Copy the compiled linux binary to the host machine
	docker cp linux-binary:/app/$(BUILDNAME) .
	#Remove the linux-binary container
	docker rm linux-binary
	#Remove the linux-binary-image
	docker image rm linux-binary-image

linux-386-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=386 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image

linux-arm-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=arm --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image

linux-arm64-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=arm64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image


linux-ppc64-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=ppc64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image

linux-ppc64le-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=ppc64le --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image

linux-mips-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=mips --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image

linux-mipsle-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=mipsle --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image

linux-mips64-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=mips64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image

linux-mips64le-binary: 
	docker build -t linux-binary-image --build-arg BUILDOS=linux --build-arg BUILDARCH=mips64le --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name linux-binary  linux-binary-image
	docker cp linux-binary:/app/$(BUILDNAME) .
	docker rm linux-binary
	docker image rm linux-binary-image

darwin-386-binary: 
	docker build -t darwin-binary-image --build-arg BUILDOS=darwin --build-arg BUILDARCH=386 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name darwin-binary  darwin-binary-image
	docker cp darwin-binary:/app/$(BUILDNAME) .
	docker rm darwin-binary
	docker image rm darwin-binary-image

darwin-amd64-binary: 
	docker build -t darwin-binary-image --build-arg BUILDOS=darwin --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name darwin-binary  darwin-binary-image
	docker cp darwin-binary:/app/$(BUILDNAME) .
	docker rm darwin-binary
	docker image rm darwin-binary-image

darwin-arm-binary: 
	docker build -t darwin-binary-image --build-arg BUILDOS=darwin --build-arg BUILDARCH=arm --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name darwin-binary  darwin-binary-image
	docker cp darwin-binary:/app/$(BUILDNAME) .
	docker rm darwin-binary
	docker image rm darwin-binary-image

darwin-arm64-binary: 
	docker build -t darwin-binary-image --build-arg BUILDOS=darwin --build-arg BUILDARCH=arm64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name darwin-binary  darwin-binary-image
	docker cp darwin-binary:/app/$(BUILDNAME) .
	docker rm darwin-binary
	docker image rm darwin-binary-image

windows-amd64-binary: 
	docker build -t windows-binary-image --build-arg BUILDOS=windows --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME).exe --no-cache .
	docker run --name windows-binary  windows-binary-image
	docker cp windows-binary:/app/$(BUILDNAME).exe .
	docker rm windows-binary
	docker image rm windows-binary-image

windows-386-binary: 
	docker build -t windows-binary-image --build-arg BUILDOS=windows --build-arg BUILDARCH=386 --build-arg BUILDNAME=$(BUILDNAME).exe --no-cache .
	docker run --name windows-binary  windows-binary-image
	docker cp windows-binary:/app/$(BUILDNAME).exe .
	docker rm windows-binary
	docker image rm windows-binary-image

freebsd-386-binary: 
	docker build -t freebsd-binary-image --build-arg BUILDOS=freebsd --build-arg BUILDARCH=386 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name freebsd-binary  freebsd-binary-image
	docker cp freebsd-binary:/app/$(BUILDNAME) .
	docker rm freebsd-binary
	docker image rm freebsd-binary-image

freebsd-amd64-binary: 
	docker build -t freebsd-binary-image --build-arg BUILDOS=freebsd --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name freebsd-binary  freebsd-binary-image
	docker cp freebsd-binary:/app/$(BUILDNAME) .
	docker rm freebsd-binary
	docker image rm freebsd-binary-image

freebsd-arm-binary: 
	docker build -t freebsd-binary-image --build-arg BUILDOS=freebsd --build-arg BUILDARCH=arm --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name freebsd-binary  freebsd-binary-image
	docker cp freebsd-binary:/app/$(BUILDNAME) .
	docker rm freebsd-binary
	docker image rm freebsd-binary-image

netbsd-386-binary: 
	docker build -t netbsd-binary-image --build-arg BUILDOS=netbsd --build-arg BUILDARCH=386 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name netbsd-binary  netbsd-binary-image
	docker cp netbsd-binary:/app/$(BUILDNAME) .
	docker rm netbsd-binary
	docker image rm netbsd-binary-image

netbsd-amd64-binary: 
	docker build -t netbsd-binary-image --build-arg BUILDOS=netbsd --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name netbsd-binary  netbsd-binary-image
	docker cp netbsd-binary:/app/$(BUILDNAME) .
	docker rm netbsd-binary
	docker image rm netbsd-binary-image

netbsd-arm-binary: 
	docker build -t netbsd-binary-image --build-arg BUILDOS=netbsd --build-arg BUILDARCH=arm --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name netbsd-binary  netbsd-binary-image
	docker cp netbsd-binary:/app/$(BUILDNAME) .
	docker rm netbsd-binary
	docker image rm netbsd-binary-image

openbsd-386-binary: 
	docker build -t openbsd-binary-image --build-arg BUILDOS=openbsd --build-arg BUILDARCH=386 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name openbsd-binary  openbsd-binary-image
	docker cp openbsd-binary:/app/$(BUILDNAME) .
	docker rm openbsd-binary
	docker image rm openbsd-binary-image

openbsd-amd64-binary: 
	docker build -t openbsd-binary-image --build-arg BUILDOS=openbsd --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name openbsd-binary  openbsd-binary-image
	docker cp openbsd-binary:/app/$(BUILDNAME) .
	docker rm openbsd-binary
	docker image rm openbsd-binary-image

openbsd-arm-binary: 
	docker build -t openbsd-binary-image --build-arg BUILDOS=openbsd --build-arg BUILDARCH=arm --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name openbsd-binary  openbsd-binary-image
	docker cp openbsd-binary:/app/$(BUILDNAME) .
	docker rm openbsd-binary
	docker image rm openbsd-binary-image

plan9-386-binary: 
	docker build -t plan9-binary-image --build-arg BUILDOS=plan9 --build-arg BUILDARCH=386 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name plan9-binary  plan9-binary-image
	docker cp plan9-binary:/app/$(BUILDNAME) .
	docker rm plan9-binary
	docker image rm plan9-binary-image

plan9-amd64-binary: 
	docker build -t plan9-binary-image --build-arg BUILDOS=plan9 --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name plan9-binary  plan9-binary-image
	docker cp plan9-binary:/app/$(BUILDNAME) .
	docker rm plan9-binary
	docker image rm plan9-binary-image

solaris-amd64-binary:
	docker build -t solaris-binary-image --build-arg BUILDOS=solaris --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name solaris-binary  solaris-binary-image
	docker cp solaris-binary:/app/$(BUILDNAME) .
	docker rm solaris-binary
	docker image rm solaris-binary-image

android-arm-binary: 
	docker build -t android-binary-image --build-arg BUILDOS=android --build-arg BUILDARCH=arm --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name android-binary  android-binary-image
	docker cp android-binary:/app/$(BUILDNAME) .
	docker rm android-binary
	docker image rm android-binary-image

dragonfly-amd64-binary: 
	docker build -t android-binary-image --build-arg BUILDOS=dragonfly --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .
	docker run --name android-binary  android-binary-image
	docker cp android-binary:/app/$(BUILDNAME) .
	docker rm android-binary
	docker image rm android-binary-image
