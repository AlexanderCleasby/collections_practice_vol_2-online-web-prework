# your code goes here
require "pry"

def begins_with_r(array)
  array.all? { |e| e[0]=="r" }
end

def contain_a(array)
  array.delete_if{ |e| !e.include?('a')}
end

def first_wa(array)
  out = ""
  array.each{|e|
    if e[0,2]=="wa"
      out=e
      break
    end}
    out
end

def remove_non_strings(array)
  array.delete_if{ |e|
    e.class != String
  }
end

def count_elements(array)
  array = array.map{|e| e[:name]}
  array.uniq.map{|e|
  {:name => e,:count => array.count(e)} }
end

def merged_data(keys,data)
  #keys.map{|e| data e.keys #e.values}
  #data.map{|e| e.values}
  #keys.map{|e,i| data[e[:first_name]]}
  out = []
  data[0].each{|e,v|
  i = keys.index{|key| key[:first_name]==e}
  puts keys[i][:first_name]

}


end
puts merged_data(
[{:first_name => "blake"},
  {:first_name=>"ashley"}],
  [{"blake" => {
              :awesomeness => 10,
                   :height => "74",
                :last_name => "johnson"
          },
          "ashley" => {
              :awesomeness => 9,
                   :height => 60,
                :last_name => "dubs"
          }
      }
  ])
#puts count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
#binding.pry
