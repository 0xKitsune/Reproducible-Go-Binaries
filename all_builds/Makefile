
BUILDNAME=yournamehere


build-binary:
	#Build the binary image
	docker build -t binary-image --build-arg BUILDOS=$(BUILDOS) --build-arg BUILDARCH=$(BUILDARCH) --build-arg BUILDNAME=$(BUILDNAME) --no-cache .

	#Run the binary-image in a new container called binary
	docker run --name binary  binary-image

	#Copy the compiled binary to the host machine
	docker cp binary:/app/$(BUILDNAME) .
	
	#Remove the binary container
	docker rm binary

	#Remove the binary-image
	docker image rm binary-image


linux-amd64-binary: 
	make BUILDOS=linux BUILDARCH=amd64 build-binary

linux-386-binary: 
	make BUILDOS=linux BUILDARCH=386 build-binary

linux-arm-binary: 
	make BUILDOS=linux BUILDARCH=arm build-binary

linux-arm64-binary: 
	make BUILDOS=linux BUILDARCH=arm64 build-binary

linux-ppc64-binary: 
	make BUILDOS=linux BUILDARCH=ppc64 build-binary

linux-ppc64le-binary: 
	make BUILDOS=linux BUILDARCH=ppc64le build-binary

linux-mips-binary: 
	make BUILDOS=linux BUILDARCH=mips build-binary

linux-mipsle-binary: 
	make BUILDOS=linux BUILDARCH=mipsle build-binary

linux-mips64-binary: 
	make BUILDOS=linux BUILDARCH=mips64 build-binary

linux-mips64le-binary: 
	make BUILDOS=linux BUILDARCH=mips64le build-binary

darwin-386-binary: 
	make BUILDOS=darwin BUILDARCH=386 build-binary

darwin-amd64-binary: 
	make BUILDOS=darwin BUILDARCH=amd64 build-binary

darwin-arm-binary: 
	make BUILDOS=darwin BUILDARCH=arm build-binary

darwin-arm64-binary: 
	make BUILDOS=darwin BUILDARCH=arm64 build-binary

windows-amd64-binary: 
	make BUILDOS=windows BUILDARCH=amd64 build-binary

windows-386-binary: 
	make BUILDOS=windows BUILDARCH=386 build-binary

freebsd-386-binary: 
	make BUILDOS=freebsd BUILDARCH=386 build-binary

freebsd-amd64-binary: 
	make BUILDOS=freebsd BUILDARCH=amd64 build-binary

freebsd-arm-binary: 
	make BUILDOS=freebsd BUILDARCH=arm build-binary

netbsd-386-binary: 
	make BUILDOS=netbsd BUILDARCH=386 build-binary

netbsd-amd64-binary: 
	make BUILDOS=netbsd BUILDARCH=amd64 build-binary

netbsd-arm-binary: 
	make BUILDOS=netbsd BUILDARCH=arm build-binary

openbsd-386-binary: 
	make BUILDOS=openbsd BUILDARCH=386 build-binary

openbsd-amd64-binary: 
	make BUILDOS=openbsd BUILDARCH=amd64 build-binary

openbsd-arm-binary: 
	make BUILDOS=openbsd BUILDARCH=arm build-binary

plan9-386-binary: 
	make BUILDOS=plan9 BUILDARCH=386 build-binary

plan9-amd64-binary: 
	make BUILDOS=plan9 BUILDARCH=amd64 build-binary

solaris-amd64-binary:
	make BUILDOS=solaris BUILDARCH=amd64 build-binary

android-arm-binary: 
	make BUILDOS=android BUILDARCH=arm build-binary

dragonfly-amd64-binary: 
	make BUILDOS=dragonfly BUILDARCH=amd64 build-binary
