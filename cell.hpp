#ifndef __CELL_HPP_
#define __CELL_HPP_

#include "Item.hpp"
#include <iostream>

namespace _cell
{

class cell
{
private:
	_item::Item cellItem;
public:
	cell();
	~cell();
	void setCellItem(_item::Item);
	_item::Item getCellItem();
	void displayCell();
	cell operator=(cell&);
	bool operator==(cell&);
	
};

}

#endif // __CELL_HPP_