#include <stdio.h>
#include <ruby.h>

static VALUE hello(VALUE klass)
{
  return rb_str_new2("Hello World from C...!");
}

void Init_hello_world(void) {
	VALUE helloWorld = rb_define_class("HelloWorld", rb_cObject);
  	rb_define_singleton_method(helloWorld, "hello", hello, 0);
}

