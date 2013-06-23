# Put your handlebars.js helpers here.

Handlebars.registerHelper 'ifLT', (v1, v2, options) -> if v1 < v2 then options.fn @ else options.inverse @
Handlebars.registerHelper 'ifGT', (v1, v2, options) -> if v1 > v2 then options.fn @ else options.inverse @

Handlebars.registerHelper 'pluralize', (number, single, plural) -> if number is 1 then single else plural

Handlebars.registerHelper 'eachWithFn', (items, options) ->
    _(items).map((item, i, items) =>
        item._counter = i
        item._1counter = i + 1
        item._first = if i is 0 then true else false
        item._last = if i is (items.length - 1) then true else false
        item._even = if (i + 1) % 2 is 0 then true else false
        item._thirded = if (i + 1) % 3 is 0 then true else false
        item._sixthed = if (i + 1) % 6 is 0 then true else false
        _.isFunction(options.hash.fn) and options.hash.fn.apply options, [item, i, items]
        options.fn(item)
    ).join('')