using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using Aritmath.Entities;

namespace Aritmath
{
	[ServiceContract]
	public interface ICustomer
	{
		[OperationContract]
		List<User> GetCustomers();

		[OperationContract]
		User GetCustomerById(int id);

		[OperationContract]
		User GetCustomerByEmail(string email);

		[OperationContract]
		User AddCustomer(User user);

		[OperationContract]
		bool RemoveCustomer(int id);
	}
}
