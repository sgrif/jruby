require 'rspec'
require 'date'

# https://github.com/jruby/jruby/issues/1745
if RUBY_VERSION > '1.9'
  describe 'DateTime#jd' do
    it 'returns chronological Julian day number' do
      d1 = DateTime.parse('2014-04-05T23:59:59-07:00')
      d1.jd.should == 2456753
      
      # see example below
      # http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html#method-i-jd
      DateTime.new(2001,2,3,4,5,6,'+7').jd.should == 2451944
      DateTime.new(2001,2,3,4,5,6,'-7').jd.should == 2451944
    end
  end
end