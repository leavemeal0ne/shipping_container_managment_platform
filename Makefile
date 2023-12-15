.DEFAULT_GOAL = proto

proto:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative  shippy-service-consignment/proto/consignment/consignment.proto

vessel:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative shippy-service-vessel/proto/vessel/vessel.proto