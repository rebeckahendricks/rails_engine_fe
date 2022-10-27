require 'rails_helper'

RSpec.describe 'Items Index', :vcr do
  describe 'As a visitor' do
    describe 'When I visit "/items"' do
      before :each do
        visit items_path
      end

      it 'I see a list of items by name' do
        within '#items' do
          expect(page).to have_content('Item Nemo Facere')
          expect(page).to have_content('Item Expedita Aliquam')
          expect(page).to have_content('Item Provident At')
        end
      end

      describe 'When I click the items name' do
        it 'I should be on the page "/items/:id"' do
          within '#items' do
            first(:link, 'Item Qui Veritatis').click
          end

          expect(current_path).to eq(item_path(1546))
        end

        it 'I should see the name of the item, description, and unit price' do
          within '#items' do
            first(:link, 'Item Qui Veritatis').click
          end

          expect(page).to have_content('Item Qui Veritatis')
          expect(page).to have_content('Description: Exercitationem aut sunt aliquam et. Illo error id dignissimos. Ut ad omnis nihil eaque et. Reiciendis vero qui animi porro.')
          expect(page).to have_content('Unit Price: 47.25')
        end
      end
    end
  end
end
