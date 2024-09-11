require_relative '../substrings'

RSpec.describe '#substrings' do
  it 'should return a hash listing each substring that was found in the original string and how many times it was found' do
    the_office = %w[ michael scott dwight jim pam ryan andy kevin angela oscar meredith michael ]
    expect(substrings('michael scott dwight jim pam ryan andy kevin angela oscar meredith michael jim pam pam pam', the_office)).to eq({"michael"=>2, "scott"=>1, "dwight"=>1, "jim"=>2, "pam"=>4, "ryan"=>1, "andy"=>1, "kevin"=>1, "angela"=>1, "oscar"=>1, "meredith"=>1})
  end
end
