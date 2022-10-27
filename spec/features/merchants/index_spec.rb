require 'rails_helper'

RSpec.describe 'Merchant Index' do
  describe 'As a visitor', :vcr do
    describe 'When I visit "/merchants"' do
      it 'I should see a list of merchants by name' do
        visit merchants_path

        expect(page).to have_content('Schroeder-Jerde')
        expect(page).to have_content('Klein, Rempel and Jones')
        expect(page).to have_content('Willms and Sons')
      end
    end

    describe 'When I click on the merchants name' do
      before :each do
        visit merchants_path
      end

      it 'I should be on page "/merchants/:id"' do
        click_link 'Schroeder-Jerde'

        expect(current_path).to eq(merchant_path(1))
        expect(page).to have_content('Schroeder-Jerde')

        visit merchants_path
        visit merchant_path(2)
        expect(page).to have_content('Klein, Rempel and Jones')
      end

      it 'I should see a list of items that merchant sells' do
        click_link 'Fahey-Stiedemann'

        within '#items' do
          expect(page).to have_content('Item Excepturi Rem')
          expect(page).to have_content('Item Illum Minus')
        end
      end
    end
  end
end
