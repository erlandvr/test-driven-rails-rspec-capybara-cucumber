Three parts of testing

  1. Arrange
    can include:
    -instantiating objects
      vb: calc = Calculator.new('1,2')
    -setting mocks and stubs
    -populate databases with records to test against integration- tests

  2. Act
    where we launch the behavior we want to test, usually a method call
      vb: result = calc.sum

  3. Assert
    where we compare the 'expected' with the 'actual' result we computed while acting
      result.must_equal(3)

