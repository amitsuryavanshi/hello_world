#include <stdio.h>
#include <ruby.h>

static VALUE hello(VALUE mod)
{
  return rb_str_new2("Hello World from C...!");
}

void Init_hello_world(void) {
	VALUE helloWorldExtension = rb_define_module("HelloWorldExtension");
  	rb_define_singleton_method(helloWorldExtension, "hello", hello, 0);
}

