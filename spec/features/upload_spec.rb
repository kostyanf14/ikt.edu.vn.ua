require 'rails_helper'

RSpec.describe 'Upload', ui: true do
  let(:upload_path) { "/contests/#{contest.id}/upload/new" }
  let(:file_path) { "/contests/#{contest.id}/upload" }

  let(:contest) { create(:contest) }
  let!(:task) { create(:task, contest:) }
  let(:user) { create(:user, contest:) }

  before { visit upload_path }

  describe 'solution for task' do
    before do
      fill_inputs 'upload', user.slice(:secret)
      click_button 'commit'
    end

    context 'with valid file' do
      before do
        # TODO: FIX upload[solutions_attributes][0][file]
        attach_file 'upload[solutions_attributes][0][file]', 'spec/support/fixtures/tasks_solutions/task1_ok/task1.md'
        click_button 'commit'
      end

      it { expect(page).to have_content "#{task.display_name}: успішно завантажений на сервер" }
    end

    context 'with empty file' do
      before do
        # TODO: FIX upload[solutions_attributes][0][file]
        attach_file 'upload[solutions_attributes][0][file]', 'spec/support/fixtures/tasks_solutions/task1_empty/task1.md'
        click_button 'commit'
      end

      it {
        expect(page).to have_content \
          "#{task.display_name}: Помилка! Файл не може бути порожнім (0 байт). Можливо, файл відкрито у програмі MS Office."
      }
    end
  end
end
