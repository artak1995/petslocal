require 'rails_helper'

RSpec.describe Pet, type: :model do
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:available_from) }
  it { should validate_presence_of(:age) }
  it { should validate_presence_of(:species) }
  it { should validate_inclusion_of(:species).in_array(%w[cat dog rabbit]) }
  it { should validate_inclusion_of(:breed).in_array([nil, 'labrador', 'poodle', 'spaniel', 'terrier']) }

end
