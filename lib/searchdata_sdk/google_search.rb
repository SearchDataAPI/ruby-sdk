# frozen_string_literal: true

require_relative "searchdata_api_search"

# Google Search Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-search
class GoogleSearch < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Maps API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-maps-api
class GoogleMapsAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_MAPS_ENGINE)
    check_params(%i[q engine type])
  end
end

# Google Maps Reviews API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-maps-reviews-api
class GoogleMapsReviewsAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_MAPS_REVIEWS_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Autocomplete API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-autocomplete-api
class GoogleAutocompleteAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_AUTOCOMPLETE_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Scholar API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-scholar-api
class GoogleScholarAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_SCHOLAR_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Scholar Profiles API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-scholar-profiles-api
class GoogleScholarProfilesAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_SCHOLAR_PROFILES_ENGINE)
    check_params(%i[mauthors engine])
  end
end

# Google Scholar Author API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-scholar-author-api
class GoogleScholarAuthorAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_SCHOLAR_AUTHOR_ENGINE)
    check_params(%i[author_id engine])
  end
end

# Google Scholar Cite API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-scholar-cite-api
class GoogleScholarCiteAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_SCHOLAR_CITE_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Product API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-product-api
class GoogleProductAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_PRODUCT_ENGINE)
    check_params(%i[product_id engine])
  end
end

# Google Reverse Image API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-reverse-image-api
class GoogleReverseImageAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_REVERSE_IMAGE_ENGINE)
    check_params(%i[image_url engine])
  end
end

# Google Jobs API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-jobs-api
class GoogleJobsAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_JOBS_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Jobs Listing API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-jobs-listing-api
class GoogleJobsListingAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_JOBS_LISTING_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Events API Result powered by SearchData API
# Check code samples at examples/google_demo.ro
# Docs: https://app.searchdata.io/documentation/google-events-api
class GoogleEventsAPI < SearchDataAPISearch
  def initialize(params = {})
    super(params, GOOGLE_EVENTS_ENGINE)
    check_params(%i[q engine])
  end
end
