#ifndef DvectorH
#define DvectorH

#include <string>
#include "stdio.h"

using namespace std;

/**
* @brief Class describing a Dvector, defined by a size, and an array of doubles
*/
class Dvector{
	/**
	* @brief Dynamic array wich stores the coordinates of the vector
	*/
	double *coord;
	int nDim;
	public:	
	/**
	* @brief Dvector's default constructor, creates a vector whose size equals zero.
	*/
	Dvector();
	/**
	* @brief Dvector's constructor, specifying the number of dimensions
	* and the default value stored on each component of the vector
	*
	* @param int nDim 
	* @param double val = 0
	*/
	Dvector(int nDim, double val=0.0);

	/**
	* @brief Constructor copying V into the new Dvector
	*
	* @param Dvector V
	*/
	Dvector(const Dvector & V);
	
	/**
	* @brief Constructor which creates a Dvector from the file named nameFile 
	*
	* @param std::string nameFile
	*/
	Dvector(std::string nameFile);
	/**
	* @brief Destructor of a Dvector
	*/
	~Dvector();
	
	/**
	* @brief print the Dvector's information on the str flow
	*
	* @param std::ostream& str
	*/
	void display ( std::ostream& str ) const;


	/**
	* @brief returns the Dvector's size
	*
	* @return int size
	*/
	int size() const; 
	
	/**
	* @brief Fill the vector with random values following a uniform distribution
	*/
	void fillRandomly();
	
	/**
	 * @brief Change the size of the Dvector with the new size, and fill 
	 * the new memory allocated with val
	 *
	 * @param int size
	 * @param double val
	 */
	void resize(const int & size,const double & val);
	// Intern overloading

	/**
	* @brief Getter's of the ith element of the Dvector, writable. 
	*
	* @param int i
	*
	* @return double coord[i]
	*/
	double & operator() (int i);
	
	/**
	* @brief Getter's of the ith element of the Dvector, from a const Dvector
	*
	* @param i
	*
	* @return 
	*/
	double operator() (int i) const;	
	
	/**
	 * @brief Overloading the = operator
	 *
	 * @param Dvector D
	 *
	 * @return Dvector 
	 */
	Dvector & operator = (const Dvector &D);

	/**
	 * @brief Overloading the += operator
	 *
	 * @param Dvector D
	 *
	 * @return Dvector
	 */
	Dvector & operator += (const Dvector &);
	/**
	 * @brief Overloading the -= operator
	 *
	 * @param Dvector D
	 *
	 * @return Dvector
	 */
	Dvector & operator -= (const Dvector &);

	/**
	 * @brief Overloading the += operator
	 *
	 * @param double d
	 *
	 * @return Dvector
	 */
	Dvector & operator += (const double &);
	
	/**
	 * @brief Overloading the -= operator
	 *
	 * @param double d
	 *
	 * @return Dvector
	 */
	Dvector & operator -= (const double &);

	/**
	 * @brief Overloading the *= operator
	 *
	 * @param double d
	 *
	 * @return Dvector
	 */
	Dvector & operator *= (const double &);

	/**
	 * @brief Overloading the /= operator
	 *
	 * @param double d
	 *
	 * @return Dvector
	 */
	Dvector & operator /= (const double &);

	/**
	 * @brief Overloading the == operator
	 *
	 * @param Dvector
	 *
	 * @return bool
	 */
	bool operator == (const Dvector &);

	/**
	 * @brief Overloading the != operator
	 *
	 * @param Dvector
	 *
	 * @return bool
	 */
	bool operator != (const Dvector &);
};

// Extern overloading

/**
 * @brief Overloading the + operator
 *
 * @param Dvector
 * @param Dvector
 *
 * @return Dvector
 */
Dvector operator+(const Dvector &,const Dvector &);

/**
 * @brief Overloading the + operator
 *
 * @param double 
 * @param Dvector
 *
 * @return Dvector
 */
Dvector operator+(const double &,const Dvector &);

/**
 * @brief Overloading the + operator
 *
 * @param Dvector
 * @param double
 *
 * @return Dvector
 */
Dvector operator+(const Dvector &,const double &);


/**
 * @brief Overloading the - operator
 *
 * @param Dvector
 * @param Dvector
 *
 * @return Dvector
 */
Dvector operator-(const Dvector &,const Dvector &);

/**
 * @brief Overloading the - operator
 *
 * @param double
 * @param Dvector
 *
 * @return Dvector
 */
Dvector operator-(const double &,const Dvector &);

/**
 * @brief Overloading the - operator
 *
 * @param Dvector
 * @param double
 *
 * @return Dvector
 */
Dvector operator-(const Dvector &,const double &);


/**
 * @brief Overloading the * operator
 *
 * @param Dvector
 * @param double
 *
 * @return Dvector
 */
Dvector operator*(const Dvector &,const double &);

/**
 * @brief Overloading the / operator
 *
 * @param Dvector
 * @param double
 *
 * @return Dvector
 */
Dvector operator/(const Dvector &,const double &);


/**
 * @brief Overloading the * operator
 *
 * @param double
 * @param Dvector
 *
 * @return Dvector
 */
Dvector operator*(const double &,const Dvector &);

/**
 * @brief Overloading the / operator
 *
 * @param double
 * @param Dvector
 *
 * @return Dvector
 */
Dvector operator/(const double &,const Dvector &);


/**
 * @brief Overloading the - operator
 *
 * @param Dvector
 *
 * @return Dvector
 */
Dvector operator-(const Dvector &);


/**
 * @brief Overloading the << operator, print the content 
 * of the Dvector in the ostream
 *
 * @param ostream 
 * @param Dvector
 *
 * @return ostream
 */
ostream & operator <<(ostream &,const Dvector &);

/**
 * @brief Overloading the >>, fill the Dvector from the
 * istream
 *
 * @param istream
 * @param Dvector
 *
 * @return Dvector
 */
istream & operator >>(istream &,Dvector &);
#endif
