describe "conditionals_rps.rb" do
  it "should output 'You tied!' given the input 'scissors'", points: 1 do
    # Un-require conditionals_rps.rb
    conditionals_rps = $".select{|r| r.include? 'conditionals_rps.rb'}
    $".delete(conditionals_rps.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("scissors")
    response = /.?Please choose rock, paper, or scissors:.?\n.?You played scissors!.?\n.?The computer played scissors!.?\n.?You tied.?/i
    # expect { require_relative '../../conditionals_rps' }.to output(response).to_stdout

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
