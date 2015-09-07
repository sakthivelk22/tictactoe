#include "cell.hpp"

namespace _cell
{

cell::cell()
{
	this->cellItem=_item::I;
}

cell::~cell()
{}

void cell::setCellItem(_item::Item value)
{
	this->cellItem = value;
}

_item::Item cell::getCellItem()
{
	return this->cellItem;
}

void cell::displayCell()
{
	switch(this->cellItem)
	{
		case _item::X:
			std::cout<<"X";break;
		case _item::O:
			std::cout<<"O";break;
		default:
			std::cout<<" ";break;
	}
}

cell cell::operator=(cell& Cell)
{
	this->setCellItem(Cell.getCellItem());
	return *this;
}
bool cell::operator==(cell& Cell)
{
	return this->getCellItem() == Cell.getCellItem();
}

}