require 'rails_helper'

RSpec.describe Templates do
  describe 'configuration defaults' do
    it 'exposes config accessors with sensible defaults' do
      expect(Templates.parent_controller).to eq('ApplicationController')
      expect(Templates.mount_at).to eq('/templates')
      expect(Templates.views_path).to eq('templates')
      expect(Templates.auto_mount).to be(true)
    end
  end

  describe 'controller namespacing' do
    it 'defines TemplatesController under the Templates module' do
      expect(defined?(Templates::TemplatesController)).to eq('constant')
      expect(Templates::TemplatesController.ancestors).to include(ActionController::Base)
    end
  end
end
