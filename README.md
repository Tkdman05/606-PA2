# 606 PA-2 Wyatt Soper - Rotten Potatoes

**Deployed App:** (https://stark-oasis-70065-cc6844e1994d.herokuapp.com/movies)

## Features

- **Display Movies** - View all movies in a structured HTML table
- **Sortable Columns** - Click headers to sort by title, rating, or release date
  - Ascending/descending toggle
  - Visual indicators (▲/▼) and color coding
  - Sort preference persists during session
- **CRUD Operations**
  - Create new movies
  - View movie details
  - Edit existing movies
  - Delete movies
- **Data Validation** - Ensures valid ratings and required fields

## Tech Stack

- Ruby 3.x
- Rails 7.x
- SQLite (development)
- PostgreSQL (production)
- HTML5 semantic table structure
- Custom CSS (no frameworks)

## Local Setup

```bash
# Clone repository
git clone <repository-url>
cd rotten-potatoes

# Install dependencies
bundle install

# Setup database
rails db:create
rails db:migrate
rails db:seed

# Start server
rails server
```

Visit `http://localhost:3000`

## Database Schema

**Movies Table:**
- `title` (string) - Movie title
- `rating` (string) - MPAA rating (G, PG, PG-13, R, NC-17)
- `release_date` (date) - Movie release date

## Sorting Implementation

- **Controller-based sorting** using ActiveRecord queries
- **Session storage** for sort persistence
- **Helper methods** for generating sortable links and visual indicators
- **CSS classes** for column highlighting:
  - Green (`.sorted-asc`) for ascending
  - Orange (`.sorted-desc`) for descending

## Deployment

Deployed on Heroku using PostgreSQL database.

To deploy your own instance:
```bash
heroku create your-app-name
git push heroku main
heroku run rails db:migrate
heroku run rails db:seed
heroku open
```

## Project Structure

```
app/
├── controllers/
│   └── movies_controller.rb    # Sorting logic and CRUD actions
├── helpers/
│   └── movies_helper.rb        # Sort link generation
├── models/
│   └── movie.rb               # Validations
├── views/
│   └── movies/
│       ├── index.html.erb    # Sortable table view
│       ├── show.html.erb     # Movie details
│       ├── new.html.erb      # New movie form
│       └── edit.html.erb     # Edit movie form
└── assets/
    └── stylesheets/
        └── application.css    # Custom styling and sort indicators
```

## Author

Wyatt Soper