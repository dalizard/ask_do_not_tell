require_relative 'parse'

describe Parse do
  let(:parser) { Parse.new File.open('poem.txt') }

  it 'returns all text after given word (object-oriented)' do
    expect(parser.parse 'glimmer').to eq <<-TEXT
There midnight's all a glimmer, and noon a purple glow,
And evening full of the linnet's wings.

I will arise and go now, for always night and day
I hear lake water lapping with low sounds by the shore;
While I stand on the roadway, or on the pavements grey,
I hear it in the deep heart's core.
    TEXT
  end

  it 'returns all text after given word (functional)' do
    expect(parser.parse_new 'glimmer').to eq <<-TEXT
There midnight's all a glimmer, and noon a purple glow,
And evening full of the linnet's wings.

I will arise and go now, for always night and day
I hear lake water lapping with low sounds by the shore;
While I stand on the roadway, or on the pavements grey,
I hear it in the deep heart's core.
    TEXT
  end
end
