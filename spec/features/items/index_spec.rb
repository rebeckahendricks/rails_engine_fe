require 'rails_helper'

RSpec.describe 'Items Index' do
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
          click_link 'Item Qui Veritatis'

          expect(current_path).to eq(item_path(179))
        end

        it 'I should see the name of the item, description, and unit price' do
          click_link 'Item Qui Veritatis'

          expect(page).to have_content('Item Qui Veritatis')
          expect(page).to have_content('Description: Totam labore quia harum dicta eum consequatur qui. Corporis inventore consequatur. Illum facilis tempora nihil placeat rerum sint est. Placeat ut aut. Eligendi perspiciatis unde eum sapiente velit.')
          expect(page).to have_content('Unit Price: 906.17')
        end
      end
    end
  end
end
