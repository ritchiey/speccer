# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
describe Haiku do
  describe '.detected?' do
    subject { described_class.detected?(text) }

    context 'when passed haiku' do
      let(:text) do
        <<~TEXT
          Five syllables here
          And now you have seven more
          And now five. Happy?
        TEXT
      end
      it { is_expected_to eq(true) }
    end

    context 'when too many lines' do
      let(:text) do
        <<~TEXT
          Five syllables here
          And now you have seven more
          And now five. Happy?
          Extra line
        TEXT
      end
      it { is_expected_to eq(false) }
    end

    context 'when no text'
    context 'when too few lines'
    context 'when not five syllables on first line'
    context 'when not seven syllables on second line'
    context 'when not five syllables on third line'
  end
end
# rubocop:enable Metrics/BlockLength
