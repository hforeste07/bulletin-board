class BoardsController < ApplicationController
  def index
    render({ :template => "board_templates/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_boards = Board.where({ :id => the_id })

    @the_board = matching_boards.at(0)

    render({ :template => "board_templates/show" })
  end
end
