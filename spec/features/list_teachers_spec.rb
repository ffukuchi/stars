require 'spec-helper'

describe "Viewing the list of projects" do
  it "shows 3 teachers" do

  visit teachers_url
  
  expect(page).to have_text("3 Teachers")
  expect(page).to have_text("Teacher A")
  expect(page).to have_text("Teacher B")
  expect(page).to have_text("Teacher C")

  end
end
