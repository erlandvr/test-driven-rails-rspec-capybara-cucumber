Red - Green - Refactor

  The workflow without TDD (standard)

    THREE STEPS
      1. understand and analyze the problem
        vb: sum of 2 digits

      2. start to code
        vb: def sum (a, b)
          a + b
        end

      3. manual testing
        puts sum (2, 3)

        $ ruby sum.rb #=> 5
        # afterwards we know it works and delete the puts line

  The workflow with TDD (Red - Green - Refactor)

    THREE STEPS
      1. write a test (red)
      2. code to make the test pass (green)
      3. improve solution without braking the test (refactor)

  The Red - phase
    - Analyze the problem
    - Focus on public API
    - Failing test

    # we need to think right away about how it will be used
    NOTE: Different ways of recieving the data from user
      * instantiate an object and send it a message
      vb: calc = Calculator.new
          calc.sum(1,4)

          OR

      * save the result internally in the class
      vb: calc = Calculater.new(1,4)
          calc.sum

    The Green - phase
      - write just enough code to make test pass

    The Refactor - phase
      - improve code design
      - Tip: Always refactor in green #all tests must pass before you start to refactor








