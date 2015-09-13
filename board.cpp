#include "board.hpp"

namespace _board
{

board::board(int Size)
{
	this->boardSize = Size;
	this->cellboard = new _cell::cell**[boardSize];
	for (int i=0; i<this->boardSize; i++)
	{
		this->cellboard[i] = new _cell::cell*[boardSize];
		for (int j=0; j<this->boardSize; j++)
		{
			this->cellboard[i][j] = new _cell::cell();
		}
	}
}

board::~board()
{
	for (int i=0; i<this->boardSize; i++)
	{
		for (int j=0; j<this->boardSize; j++)
		{
			delete this->cellboard[i][j];
		}
        delete[] this->cellboard[i];
	}
    delete[] this->cellboard;
}	

void board::displayBoard()
{
	for (int i=0; i<=this->boardSize; i++)
	{
		switch(i)
		{
			case 0: std::cout<<'A';break;
			case 1: std::cout<<'B';break;
			case 2: std::cout<<'C';break;
			default: std::cout<<' ';;
		}
		for (int j=0; j<this->boardSize; j++)
		{
			if (i==this->boardSize)
			{
				std::cout<<" 1 2 3"<<std::endl;
				break;
			}
			else
			{
				std::cout<<"|";
				this->cellboard[i][j]->displayCell();
			}
		}	
		if (i<this->boardSize)
			std::cout<<"|"<<std::endl;
	}
}

bool board::isComplete()
{
	bool iscomp=false;
	
	for (int i=0;i<this->boardSize;i++)
	{
		int j=0;
		if (this->cellboard[i][j]->getCellItem()==this->cellboard[i][j+1]->getCellItem() 
				&&  this->cellboard[i][j]->getCellItem()!=_item::I)
			if (this->cellboard[i][j]->getCellItem()==this->cellboard[i][j+2]->getCellItem())
			{
				iscomp=true;
				break;
			}
		if (this->cellboard[j][i]->getCellItem()==this->cellboard[j+1][i]->getCellItem() 
				&&  this->cellboard[j][i]->getCellItem()!=_item::I)
			if (this->cellboard[j][i]->getCellItem()==this->cellboard[j+2][i]->getCellItem())
			{
				iscomp=true;
				break;
			}
	}
	return iscomp;
}


bool board::isFull()
{
	bool isfull=true;
	for (int i=0;i<this->boardSize;i++)
	{
		int j=0;
		if (this->cellboard[i][j]->getCellItem()==_item::I || this->cellboard[i][j+1]->getCellItem() ==_item::I 
					||  this->cellboard[i][j+2]->getCellItem()==_item::I)
			isfull=false;
		else if (this->cellboard[j][i]->getCellItem()==_item::I || this->cellboard[j+1][i]->getCellItem() == _item::I 
					||  this->cellboard[j+2][i]->getCellItem()==_item::I)
			isfull=false;
	}
	return isfull;
}

int board::isFilled(std::string input)
{
	int i=-1,j=-1;
	switch(input.c_str()[0])
	{
		case 'A':
			i=0;break;
		case 'B':
			i=1;break;
		case 'C':
			i=2;break;
	}
	switch(input.c_str()[1])
	{
		case '1':
			j=0;break;
		case '2':
			j=1;break;
		case '3':
			j=2;break;
	}
	if (i<0 || j<0)
		return -1;
	else if (this->cellboard[i][j]->getCellItem() == _item::I)
		return 0;
	else
		return 1;
}

void board::fill(std::string input,_item::Item cellItem)
{
	if(!isFilled(input))
	{
		int i=-1,j=-1;
		switch(input.c_str()[0])
		{
			case 'A':
				i=0;break;
			case 'B':
				i=1;break;
			case 'C':
				i=2;break;
		}
		switch(input.c_str()[1])
		{
			case '1':
				j=0;break;
			case '2':
				j=1;break;
			case '3':
				j=2;break;
		}
		this->cellboard[i][j]->setCellItem(cellItem);
	}
}
}