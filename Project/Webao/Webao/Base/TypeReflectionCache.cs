using System;
using System.Collections.Generic;


namespace Webao.Base
{
    // Associates Types to their corresponding TypeInformation objects.
    // The latter contains reflection info (e.g., custom attributes info)
    // obtained only once.
    public class TypeInfoCache
    {
        private readonly static Dictionary<Type, TypeInformation> dict = new Dictionary<Type, TypeInformation>();
       
        public static TypeInformation Get(Type type)
        {
            // Check if the type 'type' was already processed.
            if (!dict.TryGetValue(type, out TypeInformation typeInfo))
            {
                // If not yet consulted, create a TypeInformation object for
                // this type, and add the pair (type, typeInfo) to dictionary.
                // The TypeInformation contains reflection info (e.g., custom attributes info)
                // obtained only once.
                typeInfo = new TypeInformation(type);
                dict.Add(type, typeInfo);
            }
            // Return the TypeInformation (newly created only once or the existing one)
            // for the type 'type'.
            return typeInfo;
        }
    }

    public class TypeInformation
    {
        private Type targetType;

        // Information about Attributes, etc.
        /// 
        /// TO DO 
        /// 
        /// E.g.
        //private static Dictionary<string, List<Attribute>> attributes;
               
        public TypeInformation(Type targetType)
        {
            this.targetType = targetType;
        }

        // E.g., Indexers to get attribute info...

    }

}
