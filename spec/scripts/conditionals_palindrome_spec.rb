describe "conditionals_palindrome.rb" do
  it "should output 'true' given the input 'HanNah'", points: 1 do
    # Un-require conditionals_palindrome.rb
    conditionals_palindrome = $".select{|r| r.include? 'conditionals_palindrome.rb'}
    $".delete(conditionals_palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("HanNah\n")
    response = /true/
    expect { require_relative '../../conditionals_palindrome' }.to output(response).to_stdout
  end
end

describe "conditionals_palindrome.rb" do
  it "should output 'false' given the input 'candy'", points: 1 do
    # Un-require conditionals_palindrome.rb
    conditionals_palindrome = $".select{|r| r.include? 'conditionals_palindrome.rb'}
    $".delete(conditionals_palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("candy\n")
    response = /false/
    expect { require_relative '../../conditionals_palindrome' }.to output(response).to_stdout
  end
end

describe "conditionals_palindrome.rb" do
  it "should output 'false' given the input 'racecars'", points: 1 do
    # Un-require conditionals_palindrome.rb
    conditionals_palindrome = $".select{|r| r.include? 'conditionals_palindrome.rb'}
    $".delete(conditionals_palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("racecars\n")
    response = /false/
    expect { require_relative '../../conditionals_palindrome' }.to output(response).to_stdout
  end
end

describe "conditionals_palindrome.rb" do
  it "should output 'true' given the input 'racecar'", points: 1 do
    # Un-require conditionals_palindrome.rb
    conditionals_palindrome = $".select{|r| r.include? 'conditionals_palindrome.rb'}
    $".delete(conditionals_palindrome.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("racecar\n")
    response = /true/
    expect { require_relative '../../conditionals_palindrome' }.to output(response).to_stdout
  end
end
