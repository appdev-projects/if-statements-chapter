describe "rps.rb" do
  it "should output 'You lost!' given the input 'paper'", points: 1 do
    # Un-require rps.rb
    rps = $".select{|r| r.include? 'rps.rb'}
    $".delete(rps.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("paper")
    response = /.?Please choose rock, paper, or scissors:.?\n.?You played paper!.?\n.?The computer played scissors!.?\n.?You lost!.?\n/i

    output = with_captured_stdout { require_relative('../../rps')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Please choose rock, paper, or scissors:\\nYou played paper!\\nThe computer played scissors!\\nYou lost!', but was #{output}."
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
