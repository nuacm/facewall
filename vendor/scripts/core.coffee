window.log = -> console.log.apply console, Array::slice.call(arguments) if @console and @console.log

window.parseDec = (n) -> parseInt n, 10