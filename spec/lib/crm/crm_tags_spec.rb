# frozen_string_literal: true

require 'spec_helper'

describe '[CRM]' do
  let(:teamlab_module) { :crm }

  describe '#add_user' do
    it_behaves_like 'an api request' do
      let(:teamlab_module) { :people }
      let(:command) { :add_user }
      let(:args) { [false, random_email, random_word.capitalize, random_word.capitalize] }
      let(:add_data_to_collector) { true }
      let(:data_param) { :user_ids }
      let(:param_names) { %w[id] }
    end
  end

  describe '#create_opportunity_stage' do
    it_behaves_like 'an api request' do
      let(:teamlab_module) { :crm }
      let(:command) { :create_opportunity_stage }
      let(:args) { [random_word.capitalize, COLORS_NAMES.sample] }
      let(:add_data_to_collector) { true }
      let(:data_param) { :opportunity_stage_ids }
      let(:param_names) { %w[id] }
    end
  end

  describe '#create_opportunity' do
    it_behaves_like 'an api request' do
      let(:command) { :create_opportunity }
      let(:args) { [@data_collector[:opportunity_stage_ids].last, random_word, random_id(:user)] }
      let(:add_data_to_collector) { true }
      let(:data_param) { :opportunity_ids }
      let(:param_names) { %w[id] }
    end
  end

  describe '#create_person' do
    it_behaves_like 'an api request' do
      let(:teamlab_module) { :crm }
      let(:command) { :create_person }
      let(:args) { [random_word.capitalize, random_word.capitalize] }
      let(:add_data_to_collector) { true }
      let(:data_param) { :contact_ids }
      let(:param_names) { %w[id] }
    end
  end

  describe '#create_company' do
    it_behaves_like 'an api request' do
      let(:command) { :create_company }
      let(:args) { [random_word, [random_id(:user)]] }
      let(:add_data_to_collector) { true }
      let(:data_param) { :company_ids }
      let(:param_names) { %w[id] }
    end
  end

  describe '#add_contact_tag_to_group' do
    it_behaves_like 'an api request' do
      let(:command) { :add_contact_tag_to_group }
      let(:args) { [:company, random_id(:company), random_word(4)] }
    end
  end

  describe '#create_tag' do
    it_behaves_like 'an api request' do
      let(:command) { :create_tag }
      let(:args) { [ENTITY_TYPES.last, random_word(4)] }
      let(:add_data_to_collector) { true }
      let(:data_param) { :crm_tag_ids }
      let(:param_names) { %w[] }
    end
  end

  describe '#get_tags_for_entity_type' do
    it_behaves_like 'an api request' do
      let(:command) { :get_tags_for_entity_type }
      let(:args) { [ENTITY_TYPES.sample.sub('company', 'contact')] }
    end
  end

  describe '#get_all_contact_tags' do
    it_behaves_like 'an api request' do
      let(:command) { :get_all_contact_tags }
      let(:args) { [random_id(:contact)] }
    end
  end

  describe '#get_entity_tags' do
    it_behaves_like 'an api request' do
      let(:command) { :get_entity_tags }
      let(:args) { [(entity = ENTITY_TYPES.sample).sub('company', 'contact'), random_id(entity.to_sym)] }
    end
  end

  describe '#add_tag_to_case_group_by_filter' do
    it_behaves_like 'an api request' do
      let(:command) { :add_tag_to_case_group_by_filter }
      let(:args) { [random_id(:crm_tag)] }
    end
  end

  describe '#add_tag_group_to_entity' do
    it_behaves_like 'an api request' do
      let(:command) { :add_tag_group_to_entity }
      let(:args) { [(entity = ENTITY_TYPES.sample).sub('company', 'contact'), random_id(entity.to_sym), random_id(:crm_tag)] }
    end
  end

  describe '#add_tag_to_opportunity_group' do
    it_behaves_like 'an api request' do
      let(:command) { :add_tag_to_opportunity_group }
      let(:args) { [random_id(:crm_tag)] }
    end
  end

  describe '#add_tag' do
    it_behaves_like 'an api request' do
      let(:command) { :add_tag }
      let(:args) { [(entity = ENTITY_TYPES.sample).sub('company', 'contact'), random_id(entity.to_sym), random_id(:crm_tag)] }
    end
  end

  describe '#remove_tag' do
    it_behaves_like 'an api request' do
      let(:command) { :remove_tag }
      let(:args) { [(entity = ENTITY_TYPES.sample).sub('company', 'contact'), random_id(entity.to_sym), random_id(:crm_tag)] }
    end
  end

  describe '#delete_tag' do
    it_behaves_like 'an api request' do
      let(:command) { :delete_tag }
      let(:args) { [ENTITY_TYPES.last, @data_collector[:crm_tag_ids].pop] }
    end
  end

  describe '#delete_unused_tags' do
    it_behaves_like 'an api request' do
      let(:command) { :delete_unused_tags }
      let(:args) { [ENTITY_TYPES.sample.sub('company', 'contact')] }
    end
  end
end
