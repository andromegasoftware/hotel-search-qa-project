# QA Test Strategy for Hotel-Search Flutter App

## Objective
Define a manual and optional automated testing plan to ensure key functionalities of the hotel-search Flutter app work correctly.

## 1. Key User Flows
- Open the app and land on the Overview screen
- Navigate to Hotels tab and search for a hotel
- View search results and add a hotel to Favorites
- Navigate to Favorites tab and view saved hotels
- Navigate to Account tab to view account screen

## 2. UI Validations
- Text alignment and visibility
- Responsiveness on various devices
- Icon/button visibility
- Smooth animations and transitions

## 3. Priority Test Cases
| ID   | Test Case Description                            | Priority |
|------|--------------------------------------------------|----------|
| TC01 | Launch app and verify Overview screen            | High     |
| TC02 | Navigate to Hotels tab                           | High     |
| TC03 | Search hotels with valid input                   | High     |
| TC04 | Search with no input (empty search)              | Medium   |
| TC05 | Tap heart icon to add/remove favorites           | High     |
| TC06 | Verify hotel appears in Favorites tab            | High     |
| TC07 | Navigate to Account tab                          | Medium   |
| TC09 | Handle no internet connection gracefully         | High     |

## 5. Integration/Widget Test Plan
- Widget tests for:
  - HotelCard
  - SearchForm
- Integration:
  - Adding to the Favorites
  - Deleting from the Favorites


## 6. End-to-End Test Flow
| Step | Description                                      | Expected Result                                    |
|------|--------------------------------------------------|--------------------------------------------------- |
| 1    | Launch app and verify Overview tab               | - App launches successfully                        |
                                                          | - Overview tab is visible and selected             |
                                                          | - "Hotel Booking" title is displayed               |
| 2    | Navigate to Hotels tab                           | - Hotels tab becomes selected                      |
                                                          | - Search bar is visible                            |
                                                          | - Hotels list view is displayed                    |
| 3    | Search for hotels and verify results             | - Search input accepts text                        |
                                                          | - Results appear after typing                      |
                                                          | - Hotel cards are displayed with images            |
| 4    | Add hotel to favorites                           | - Heart icon is tappable                           |
                                                          | - Icon changes state when tapped                   |
                                                          | - Success feedback is shown                        |
| 5    | Navigate to Favorites and verify                 | - Selected hotel appears in Favorites tab          |
                                                          | - Hotel details match the added hotel              |
                                                          | - Heart icon shows filled state                    |
| 6    | Complete flow verification                       | - Navigate to Account tab successfully             |
                                                          | - Return to Overview tab                           |
                                                          | - Exit app gracefully                              |

Note: This E2E flow can be automated using Patrol framework as configured in the QA environment setup.



