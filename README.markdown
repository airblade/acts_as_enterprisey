# ActsAsEnterprisey


## Introduction

Let's face it, we all want the big bucks.  And we all know Consultancy Law No. 1:

    Your Rates Are Proportional To Your App's Enterpriseyness

Or, as Shakespeare would have said:

    Enterprisey Apps Invite, Nay Demand, Enterprisey Rates.  Verily, Sunshine.

Rails make life easy for us but -- and it's a big but -- we don't want it to look easy.  `acts_as_enterprisey` is your friend.

How does `acts_as_enterprisey` make webapp development look hard?  Well, the only way your client can judge your app is by playing around with it.  What better gives the feeling of heavy weights being lifted behind the scenes than slow response times?  Exactly.  That's what `acts_as_enterprisey` does.

So while your client clicks, ...waits..., and then gets the page, you can blather on heroically about wrestling with clustered indexes, cache expiration strategies, `n log n` seek times, <i>etc ad nauseam</i>.


## Usage

Simply insert `acts_as_enterprisey` in your `ActiveRecord` model.  That's it.  (It wouldn't be much use if you actually had to do some work to make it look hard, would it?)

For example:

    class ShuttleLaunchSequencer < ActiveRecord::Base
      acts_as_enterprisey
    end

This slows down all the `ShuttleLaunchSequencer`'s finders by 2 seconds.

Another example:

    class GpsSatelliteBeacon < ActiveRecord::Base
      acts_as_enterprisey :delay => 3, :random => true
    end

This slows down the `GpsSatelliteBeacon`'s finders by a random delay between 0 and 3 seconds.

You can feel your rates rising already.  I know it.


## Strategy

Clients pay you to solve their technical problems.  They want to feel like they're getting their money's worth.  Especially after you start submitting enterprisey invoices.

So make their wishes come true: it's only fair.  Ethical, even.  Crank the delay up as the deadline approaches, make them sweat, display fortitude and perseverance, etc.  And when they can't take it (the app's sluggishness, your bills, whatever) any more, whip out the `acts_as_enterprisey` from your models and book the flights to Vegas.


## Installation

Install in the usual Rails way:

    script/plugin install git://github.com/airblade/acts_as_enterprisey.git


## Author

Sometimes plausible deniability is best.

But, for the record, you can blame [Andrew Stewart](mailto:boss@airbladesoftware.com) at [AirBlade Software](http://airbladesoftware.com).


## See Also

Acts as ASP.NET:

https://web.archive.org/web/20080416051943/http://www.railsjedi.com/posts/15-Acts-as-ASP-NET-a-Ruby-on-Rails-Plugin-

A much more impressive effort than this slapdash thing.


## Licence

`acts_as_enterprisey` is available under the MIT licence.  See MIT-LICENCE for the details.

Copyright (c) 2006 Andrew Stewart
