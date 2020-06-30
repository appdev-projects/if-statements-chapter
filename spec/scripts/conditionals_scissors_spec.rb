describe "conditionals_rps.rb" do
  it "should output 'You tied!' given the input 'scissors'", points: 1 do
    # Un-require conditionals_rps.rb
    conditionals_rps = $".select{|r| r.include? 'conditionals_rps.rb'}
    $".delete(conditionals_rps.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("scissors")
    response = /.Please choose rock, paper, or scissors:.\n.You played scissors!.\n.The computer played scissors!.\n.You tied.*/
    expect { require_relative '../../conditionals_rps' }.to output(response).to_stdout
  end
end
