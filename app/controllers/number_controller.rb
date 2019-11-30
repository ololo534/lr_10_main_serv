# Class for controller
class NumberController < ApplicationController
  def input; end

  def output
    n = params[:value]
    @result = if !n || n.empty?
                'Enter number!'
              else
                n = n.to_i
                res = []
                while n.positive?
                  if palindrome?(n.to_s) && palindrome?(n.to_s(2))
                    res.push [n.to_s, n.to_s(2)]
                  end
                  n -= 1
                end
                res
              end
    render :xml => @result
  end

  private

  def palindrome?(item)
    item == item.reverse
  end
end
