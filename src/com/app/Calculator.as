package com.app {
    public class Calculator {

        public function add(a:int, b:int):int {
            return a + b;
        }

        public function subtract(a:int, b:int):int {
            return a - b;
        }

        public function divide(a:int, b:int):Number {
            if (b == 0) {
                throw new Error("Division by zero");
            }
            return a / b;
        }
    }
}
