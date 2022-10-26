require 'rails_helper'

RSpec.describe 'Merchant Index' do
  describe 'As a visitor' do
    describe 'When I visit "/merchants"' do
      before :each do
        visit merchants_path
      end

      it 'I should see a list of merchants by name' do
        expect(page).to have_content()
      end
    end

    describe 'When I click on the merchants name' do
      it 'I should be on page "/merchants/:id"' do
        click_link '' #merchant_name link
        expect(current_path).to eq(merchant_path()) #merchant_id
        expect(page).to have_content() #merchant name

        visit merchant_path() #another merchant_id
        expect(page).to have_content() #another merchant_name
      end

      it 'I should see a list of items that merchant sells' do
        click_link '' #merchant_name link
        within '#items' do
          expect(page).to have_content() #item_name
          expect(page).to have_content() #item_name
        end
      end
    end
  end
end
