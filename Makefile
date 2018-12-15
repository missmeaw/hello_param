ifneq ($(KERNELRELEASE),)
obj-m := hello_param.o
else
KDIR := /lib/modules/4.16.7/build
all:
	$(MAKE) -C $(KDIR) M=$$PWD
endif
