package {
    import org.flexunit.Assert;

    public class CalculatorTest {

        private var calc:Calculator;

        [Before]
        public function setUp():void {
            calc = new Calculator();
        }

        [Test]
        public function testAdd():void {
            Assert.assertEquals(5, calc.add(2, 3));
        }

        [Test]
        public function testSubtract():void {
            Assert.assertEquals(1, calc.subtract(3, 2));
        }
    }
}
