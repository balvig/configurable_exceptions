# ConfigurableExceptions

Test your 404/500 pages by toggling on/off showing of error pages on a per spec-basis.

## Installation

Add this line to your application's Gemfile:

    gem 'configurable_exceptions', group: :test

If you're using RSpec, dump something like this in `spec/support/allow_rescue.rb`:
   
```ruby
RSpec.configure do |config|
  config.around(:example, :allow_rescue) do |example|
    ConfigurableExceptions.show_exceptions = true
    example.run
    ConfigurableExceptions.show_exceptions = false
  end
end
```

## Usage

```ruby
  scenario 'Show 404 for non-existant posts', :allow_rescue do
    visit post_path(3)
    expect(page).to have_content('was not found')
  end
```

## Why?

After extensive stackoverflowing, couldn't find a good way of turning exception pages on for select specs only. Setting `Rails.application.config.action_dispatch.show_exceptions` in the RSpec configure block seems to only work for the first spec and then gets stuck so doesn't work for running the whole suite. Thus, this configurable middleware that forces the ShowErrors middleware to show exceptions when activated.
