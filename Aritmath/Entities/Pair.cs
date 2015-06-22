using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace Aritmath.Entities
{
	[DataContract]
	public class Pair
	{
		[DataMember]
		public int one { get; set; }
		[DataMember]
		public int two { get; set; }
	}
}
