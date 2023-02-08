describe "palindrome.rb" do
  it "should output 'true' given the input 'HanNah'", points: 1 do
    # Un-require palindrome.rb
    palindrome = $".select{|r| r.include? 'palindrome.rb'}
    $".delete(palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("HanNah\n")
    response = /true/i

    output = with_captured_stdout { require_relative('../../palindrome')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter one word\\ntrue', but was #{output}."
  end
end

describe "palindrome.rb" do
  it "should output 'false' given the input 'candy'", points: 1 do
    # Un-require palindrome.rb
    palindrome = $".select{|r| r.include? 'palindrome.rb'}
    $".delete(palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("candy\n")
    response = /false/i
    # expect { require_relative '../../palindrome' }.to output(response).to_stdout

    output = with_captured_stdout { require_relative('../../palindrome')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter one word\\nfalse', but was #{output}."
  end
end

describe "palindrome.rb" do
  it "should output 'false' given the input 'racecars'", points: 1 do
    # Un-require palindrome.rb
    palindrome = $".select{|r| r.include? 'palindrome.rb'}
    $".delete(palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("racecars\n")
    response = /false/i

    output = with_captured_stdout { require_relative('../../palindrome')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter one word\\nfalse', but was #{output}."
  end
end

describe "palindrome.rb" do
  it "should output 'true' given the input 'racecar'", points: 1 do
    # Un-require palindrome.rb
    palindrome = $".select{|r| r.include? 'palindrome.rb'}
    $".delete(palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("racecar\n")
    response = /true/i

    output = with_captured_stdout { require_relative('../../palindrome')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter one word\\ntrue', but was #{output}."
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
