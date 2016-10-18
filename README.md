# Housing MA

[![Build Status](https://travis-ci.org/MAPC/housingma.svg?branch=master)](https://travis-ci.org/MAPC/housingma) [![Code Climate](https://codeclimate.com/github/MAPC/housingma/badges/gpa.svg)](https://codeclimate.com/github/MAPC/housingma) [![Test Coverage](https://codeclimate.com/github/MAPC/housingma/badges/coverage.svg)](https://codeclimate.com/github/MAPC/housingma)

> Simple housing production plans and data for Massachusetts

## Roadmap

- [beechnut created a gem called `crease`][crease]. Use it to swap out the calculations in the template from methods like `Calc.method(params).another_method(args)` to simple English like `an.increase.of(params).percent`.
- [Replace Haml templates with Markdown](hamdown), and possibly make them dynamic and re-orderable.
- Add seed data so we can test the app out quickly. Add instructions because there are two databases that need to be created, and that's not evident until you run into errors.
- Replace static pages with [thoughbot/high_voltage][zap].
- The rendering of JSON in ProfileFacade is extremely slow, complicated, and messy. Switch to using JSONAPI Resources or something, and extract the logic from the facade -- its not where that belongs.
- Replace the CommonFacade with the [Burgundy gem][burg].
- Simplify the way that Nearest Neighbors are calculated.
- Upgrade Rails and use streaming templates, to speed up perceived load times.
- Add integration tests.
- Simplify the controllers via `before_action` hooks, and set things up so that we don't need `unscoped` in some actions, or that the condition we're unscoping is explicit.
- Extract the Word Doc generator as a service object.

[hamdown]: http://chriseppstein.github.io/blog/2010/02/08/haml-sucks-for-content/
[crease]: https://github.com/beechnut/crease
[burg]: https://github.com/fnando/burgundy
[zap]: https://github.com/thoughtbot/high_voltage
