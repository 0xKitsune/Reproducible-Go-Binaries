
BUILDNAME=yournamehere

linux-binary: 

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


windows-binary: 

	#Build the windows-binary image
	docker build -t windows-binary-image --build-arg BUILDOS=windows --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME).exe --no-cache .

	#Run the windows-binary-image in a new container called windows-binary
	docker run --name windows-binary  windows-binary-image

	#Copy the compiled windows binary to the host machine
	docker cp windows-binary:/app/$(BUILDNAME).exe .
	
	#Remove the windows-binary container
	docker rm windows-binary

	#Remove the windows-binary-image
	docker image rm windows-binary-image


mac-binary: 

	#Build the mac-binary image
	docker build -t mac-binary-image --build-arg BUILDOS=darwin --build-arg BUILDARCH=amd64 --build-arg BUILDNAME=$(BUILDNAME) --no-cache .

	#Run the mac-binary-image in a new container called mac-binary
	docker run --name mac-binary  mac-binary-image

	#Copy the compiled mac binary to the host machine
	docker cp mac-binary:/app/$(BUILDNAME) .
	
	#Remove the mac-binary container
	docker rm mac-binary

	#Remove the mac-binary-image
	docker image rm mac-binary-image
