#ifndef __BOARD_HPP_
#define __BOARD_HPP_

#include "cell.hpp"
#include <iostream>
namespace _board
{

class board
{
private:
	_cell::cell ***cellboard;
	int boardSize;
public:
	board(int Size);
	~board();
    void displayBoard();
	bool isComplete();
	bool isFull();
	int isFilled(std::string input);
	void fill(std::string,_item::Item);
};

}

#endif // __BOARD_HPP_
