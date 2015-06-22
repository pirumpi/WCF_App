using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Aritmath.Entities;

namespace Aritmath
{
	public class Customer : ICustomer, IDisposable
	{
		readonly ClientsEntities _db = new ClientsEntities();

		public List<User> GetCustomers()
		{
			return _db.Users.ToList();
		}

		public User GetCustomerById(int id)
		{
			return _db.Users.FirstOrDefault(u => u.UsersID == id);
		}

		public User GetCustomerByEmail(string email)
		{
			return _db.Users.FirstOrDefault(u => u.Email == email);
		}

		public User AddCustomer(User user)
		{
			_db.Users.Add(user);
			_db.SaveChanges();
			return user;
		}

		public bool RemoveCustomer(int id)
		{
			try
			{
				var user = _db.Users.FirstOrDefault(u => u.UsersID == id);
				_db.Users.Remove(user);
				_db.SaveChanges();

				return true;
			}
			catch (Exception)
			{
				return false;
			}
		}

		public void Dispose()
		{
			_db.Dispose();
		}
	}
}
