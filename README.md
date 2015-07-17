# SEO Rails Helpers

[![Gem Version](https://badge.fury.io/rb/seo_rails_helpers.svg)](http://badge.fury.io/rb/seo_rails_helpers) [![Build Status](https://travis-ci.org/rubysamurai/seo_rails_helpers.svg?branch=master)](https://travis-ci.org/rubysamurai/seo_rails_helpers)

Collection of view helpers to improve search engine optimization of Ruby on Rails application.

## Installation

SEO Rails Helpers requires Ruby version >=1.9.3 and Rails >= 3.2

Add this line to your Rails application's Gemfile:

```ruby
gem 'seo_rails_helpers'
```

And then execute `bundle` command to install.

## Usage

### 1. seo_page_title

This helper will produce SEO friendly page title. It assumes you are using either `content_for` or `provide` helper in your page view to store page title.

Include `seo_page_title` in the `<head>` section of your layout

ERB example:
```erb
<head>
  <%= seo_page_title %>
  <%# other elements %>
</head>
```

Haml example:
```haml
%head
  seo_page_title
  -# other elements
```

This will create HTML title element:
```html
<title>Page Title | Base Title</title>
```

Exact format of title element will vary based on user-specific options.

#### seo_page_title options

| Name | Description | Default
| ----------- | ------------------------|-----------
| ```:page_title```| Identifier for stored page title. Specify symbol representing identifier in your ```provide``` or ```content_for``` method. | ```:title```
| ```:separator``` | Character that separates `:page_title` and `:base_title` | \|
| ```:base_title```| Base title, like your brand or app name. In case `:page_title` is missing or empty the title will consist of `:base_title` only.  | Your Rails application name

#### example seo_page_title usage

```ruby
provide(:page_title, 'Example Page')
```

```ruby
seo_page_title(page_title: :page_title, 
               separator: '>', 
               base_title: 'Example Site')
```

Will produce following title element:
```html
<title>Example Page &gt; Example Site</title>
```

### 2. seo_meta_description

This helper will create and insert meta element to specify description. Unlike `seo_page_title`, it produces meta description only when corresponding page explicitly sent it via either `content_for` or `provide`. Reason for such behavior - having any kind of default meta description is considered a bad SEO practice and may result in search engine ranking penalty.

Include `seo_meta_description` in the `<head>` section of your layout

ERB example:
```erb
<head>
  <%= seo_meta_description %>
  <%# other elements %>
</head>
```

Haml example:
```haml
%head
  seo_meta_description
  -# other elements
```

This will create HTML title element like:
```html
<meta name="description" content="Example meta description" />
```

#### seo_meta_description options

| Name | Description | Default
| ----------- | ------------------------|-----------
| ```:description```| Identifier for stored meta description. Specify symbol representing identifier in your ```provide``` or ```content_for``` method. | ```:description```

#### example seo_meta_description usage

```ruby
provide(:meta_description, 'Custom meta description')
```

```ruby
seo_meta_description(description: :meta_description)
```

Will produce following title element:
```html
<meta name="description" content="Custom meta description" />
```

## Contributing

Fork the project and submit a pull request.
