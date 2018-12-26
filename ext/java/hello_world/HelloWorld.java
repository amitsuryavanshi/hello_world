import org.jruby.Ruby;
import org.jruby.RubyClass;
import org.jruby.RubyObject;
import org.jruby.anno.JRubyClass;
import org.jruby.anno.JRubyMethod;

@JRubyClass(name="HelloWorld")
public class HelloWorld extends RubyObject {
	public HelloWorld(Ruby ruby, RubyClass rubyClass) {
        super(ruby, rubyClass);
    }

	@JRubyMethod(meta = true, rest = true)
    public static String hello() {
        return "Hello World from JAVA...!";
    }
}
