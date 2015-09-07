#include <iostream>
#include <conio.h>
#include "board.hpp"


int main(int argc, char **argv)
{
	_board::board *game = new _board::board(3);
	bool ptoggle=false;
	while (!game->isFull() && !game->isComplete())
	{
		std::string input;
		game->displayBoard();
		std::cout<<"Enter Your Field:"<<std::endl;
		std::cin>>input;
		if (!game->isFilled(input))
		{
			game->fill(input,ptoggle==false?_item::X:_item::O);
			ptoggle=(ptoggle==false?true:false);
		}
		else
		{
			std::cout<<"Enter Valid Input"<<std::endl;
		}
	}
	std::cout<<"Game Over"<<std::endl;
	game->displayBoard();
	std::cout<<"Press any key to exit!"<<std::endl;
	
	getch();
	return 0;
}
