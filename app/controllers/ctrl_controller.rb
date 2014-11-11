class CtrlController < ApplicationController
  def para
  	  render text: 'idパラメータ：' + params[:id]
  end
end
