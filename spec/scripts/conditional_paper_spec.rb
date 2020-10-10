describe "conditionals_rps.rb" do
  it "should output 'You lost!' given the input 'paper'", points: 1 do
    # Un-require conditionals_rps.rb
    conditionals_rps = $".select{|r| r.include? 'conditionals_rps.rb'}
    $".delete(conditionals_rps.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("paper")
    response = /.?Please choose rock, paper, or scissors:.?\n.?You played paper!.?\n.?The computer played scissors!.?\n.?You lost!.?\n/
    expect { require_relative '../../conditionals_rps' }.to output(response).to_stdout
  end
end
