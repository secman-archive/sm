require "optparse"
require "colorize"

$l = `verx secman-team/secman -l`
$c = `secman verx`

def _n()
  ly = $l.cyan.bold
  cy = $c.cyan.bold

  nr = "\nthere's a new release of secman is avalaible:".yellow
  up = "to upgrade run".yellow
  smu = "secman upg".cyan
  puts new_r = "#{nr} #{cy} → #{ly}#{up} #{smu}"
end

def check()
  if $l != $c
    _n
  end
end

OptionParser.new do |opts|
  opts.on("-c", "--check", "check the version") do |c|
    check()
  end
end.parse!
