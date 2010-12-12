module Seedy
  module Generators
    INDUSTRIES = [
      "Agriculture", 
      "Forestry",
      "Fishing and Hunting",
      "Mining",
      "Utilities",
      "Construction",
      "Manufacturing",
      "Wholesale Trade",
      "Retail Trade",
      "Transportation", 
      "Warehousing",
      "Information",
      "Finance",
      "Insurance",
      "Real Estate",
      "Scientific",
      "Technical Services",
      "Corporate Management",
      "Administrative",
      "Support",
      "Waste Management",
      "Remediation Services",
      "Education Services",
      "Health Care",
      "Social Assistance",
      "Arts", 
      "Entertainment", 
      "Recreation",
      "Accommodation",
      "Food Services",
      "Other",
      "Public Administration"]
    def industry
      INDUSTRIES[rand(INDUSTRIES.length - 1)]
    end
  end
end
