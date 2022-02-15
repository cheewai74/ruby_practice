require './stringAnalyzer_spec'
#load './stringAnalyzer_spec'

describe StringAnalyzer do

    context "With valid input" do

        it "should detect when a string contain vowels" do
            sa = StringAnalyzer.new
            test_string ="uuu"
            expect(sa.has_vowels? test_string).to be true
        end

        it "should detect when a string doesn't contain vowels" do
            sa = StringAnalyzer.new
            test_string ="bcdg"
            expect(sa.has_vowels? test_string).to be false
        end

    end

end 