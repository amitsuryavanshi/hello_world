#include <stdio.h>
#include <ruby.h>

static VALUE hello_world_c(VALUE mod)
{
  return rb_str_new2("hello world");
}

void Init_hello_world(void) {
	VALUE helloWorld = rb_define_module("HelloWorldC");
  	rb_define_singleton_method(helloWorld, "hello_world_c", hello_world_c, 0);
}

