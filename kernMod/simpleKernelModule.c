#include<linux/module.h>

#include<linux/kernel.h>

MODULE_LICENSE("GPL");

void clean_module(void);


int init_module(){
	printk(KERN_INFO "Sample loaded\n");
	return 0;
}

void clean_module(){
	printk(KERN_INFO "Sample module unloaded\n");
}


