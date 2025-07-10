# Makefile para build de perfis do Archiso

BUILD_CMD = sudo mkarchiso -v -w work -r -o iso

.PHONY: build build-% clean

build:
	# sudo rm -rf work/*
	$(BUILD_CMD) profiles/default

build-%:
	#sudo rm -rf work/*
	$(BUILD_CMD) profiles/$*

run:
	ISO=$$(ls -t iso/*.iso | head -n1) && echo "Executando $$ISO" && run_archiso -u -i "$$ISO"

clean:
	sudo rm -rf iso work
