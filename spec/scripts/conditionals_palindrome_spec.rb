describe "conditionals_palindrome.rb" do
  it "should output 'true' given the input 'HanNah'", points: 1 do
    # Un-require conditionals_palindrome.rb
    conditionals_palindrome = $".select{|r| r.include? 'conditionals_palindrome.rb'}
    $".delete(conditionals_palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("HanNah\n")
    response = /true/i
    # expect { require_relative '../../conditionals_palindrome' }.to output(response).to_stdout

    output = with_captured_stdout { require_relative('../../conditionals_palindrome')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be '#{response}', but was #{output}."
  end
end

describe "conditionals_palindrome.rb" do
  it "should output 'false' given the input 'candy'", points: 1 do
    # Un-require conditionals_palindrome.rb
    conditionals_palindrome = $".select{|r| r.include? 'conditionals_palindrome.rb'}
    $".delete(conditionals_palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("candy\n")
    response = /false/i
    # expect { require_relative '../../conditionals_palindrome' }.to output(response).to_stdout

    output = with_captured_stdout { require_relative('../../conditionals_palindrome')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be '#{response}', but was #{output}."
  end
end

describe "conditionals_palindrome.rb" do
  it "should output 'false' given the input 'racecars'", points: 1 do
    # Un-require conditionals_palindrome.rb
    conditionals_palindrome = $".select{|r| r.include? 'conditionals_palindrome.rb'}
    $".delete(conditionals_palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("racecars\n")
    response = /false/i
    # expect { require_relative '../../conditionals_palindrome' }.to output(response).to_stdout

    output = with_captured_stdout { require_relative('../../conditionals_palindrome')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be '#{response}', but was #{output}."
  end
end

describe "conditionals_palindrome.rb" do
  it "should output 'true' given the input 'racecar'", points: 1 do
    # Un-require conditionals_palindrome.rb
    conditionals_palindrome = $".select{|r| r.include? 'conditionals_palindrome.rb'}
    $".delete(conditionals_palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("racecar\n")
    response = /true/i
    # expect { require_relative '../../conditionals_palindrome' }.to output(response).to_stdout

    output = with_captured_stdout { require_relative('../../conditionals_palindrome')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be '#{response}', but was #{output}."
  end
end

def with_captured_stdout
  original_stdout = $stdout  # capture previous value of $stdout
  $stdout = StringIO.new     # assign a string buffer to $stdout
  yield                      # perform the body of the user code
  $stdout.string             # return the contents of the string buffer
ensure
  $stdout = original_stdout  # restore $stdout to its previous value
end
