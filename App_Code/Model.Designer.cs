﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;

[assembly: EdmSchemaAttribute()]
#region Metadatos de relaciones en EDM

[assembly: EdmRelationshipAttribute("DatabaseModel", "FK_Record_ToUser", "User", System.Data.Metadata.Edm.RelationshipMultiplicity.ZeroOrOne, typeof(DatabaseModel.User), "Record", System.Data.Metadata.Edm.RelationshipMultiplicity.Many, typeof(DatabaseModel.Record), true)]

#endregion

namespace DatabaseModel
{
    #region Contextos
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    public partial class DatabaseEntities1 : ObjectContext
    {
        #region Constructores
    
        /// <summary>
        /// Inicializa un nuevo objeto DatabaseEntities1 usando la cadena de conexión encontrada en la sección 'DatabaseEntities1' del archivo de configuración de la aplicación.
        /// </summary>
        public DatabaseEntities1() : base("name=DatabaseEntities1", "DatabaseEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Inicializar un nuevo objeto DatabaseEntities1.
        /// </summary>
        public DatabaseEntities1(string connectionString) : base(connectionString, "DatabaseEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Inicializar un nuevo objeto DatabaseEntities1.
        /// </summary>
        public DatabaseEntities1(EntityConnection connection) : base(connection, "DatabaseEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Métodos parciales
    
        partial void OnContextCreated();
    
        #endregion
    
        #region Propiedades de ObjectSet
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        public ObjectSet<Record> Record
        {
            get
            {
                if ((_Record == null))
                {
                    _Record = base.CreateObjectSet<Record>("Record");
                }
                return _Record;
            }
        }
        private ObjectSet<Record> _Record;
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        public ObjectSet<User> User
        {
            get
            {
                if ((_User == null))
                {
                    _User = base.CreateObjectSet<User>("User");
                }
                return _User;
            }
        }
        private ObjectSet<User> _User;

        #endregion

        #region Métodos AddTo
    
        /// <summary>
        /// Método desusado para agregar un nuevo objeto al EntitySet Record. Considere la posibilidad de usar el método .Add de la propiedad ObjectSet&lt;T&gt; asociada.
        /// </summary>
        public void AddToRecord(Record record)
        {
            base.AddObject("Record", record);
        }
    
        /// <summary>
        /// Método desusado para agregar un nuevo objeto al EntitySet User. Considere la posibilidad de usar el método .Add de la propiedad ObjectSet&lt;T&gt; asociada.
        /// </summary>
        public void AddToUser(User user)
        {
            base.AddObject("User", user);
        }

        #endregion

    }

    #endregion

    #region Entidades
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="DatabaseModel", Name="Record")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Record : EntityObject
    {
        #region Método de generador
    
        /// <summary>
        /// Crear un nuevo objeto Record.
        /// </summary>
        /// <param name="idRecord">Valor inicial de la propiedad IdRecord.</param>
        public static Record CreateRecord(global::System.Int32 idRecord)
        {
            Record record = new Record();
            record.IdRecord = idRecord;
            return record;
        }

        #endregion

        #region Propiedades simples
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 IdRecord
        {
            get
            {
                return _IdRecord;
            }
            set
            {
                if (_IdRecord != value)
                {
                    OnIdRecordChanging(value);
                    ReportPropertyChanging("IdRecord");
                    _IdRecord = StructuralObject.SetValidValue(value, "IdRecord");
                    ReportPropertyChanged("IdRecord");
                    OnIdRecordChanged();
                }
            }
        }
        private global::System.Int32 _IdRecord;
        partial void OnIdRecordChanging(global::System.Int32 value);
        partial void OnIdRecordChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Plate
        {
            get
            {
                return _Plate;
            }
            set
            {
                OnPlateChanging(value);
                ReportPropertyChanging("Plate");
                _Plate = StructuralObject.SetValidValue(value, true, "Plate");
                ReportPropertyChanged("Plate");
                OnPlateChanged();
            }
        }
        private global::System.String _Plate;
        partial void OnPlateChanging(global::System.String value);
        partial void OnPlateChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String FirstName
        {
            get
            {
                return _FirstName;
            }
            set
            {
                OnFirstNameChanging(value);
                ReportPropertyChanging("FirstName");
                _FirstName = StructuralObject.SetValidValue(value, true, "FirstName");
                ReportPropertyChanged("FirstName");
                OnFirstNameChanged();
            }
        }
        private global::System.String _FirstName;
        partial void OnFirstNameChanging(global::System.String value);
        partial void OnFirstNameChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String LastName
        {
            get
            {
                return _LastName;
            }
            set
            {
                OnLastNameChanging(value);
                ReportPropertyChanging("LastName");
                _LastName = StructuralObject.SetValidValue(value, true, "LastName");
                ReportPropertyChanged("LastName");
                OnLastNameChanged();
            }
        }
        private global::System.String _LastName;
        partial void OnLastNameChanging(global::System.String value);
        partial void OnLastNameChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.DateTime> GateIn
        {
            get
            {
                return _GateIn;
            }
            set
            {
                OnGateInChanging(value);
                ReportPropertyChanging("GateIn");
                _GateIn = StructuralObject.SetValidValue(value, "GateIn");
                ReportPropertyChanged("GateIn");
                OnGateInChanged();
            }
        }
        private Nullable<global::System.DateTime> _GateIn;
        partial void OnGateInChanging(Nullable<global::System.DateTime> value);
        partial void OnGateInChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.DateTime> GateOut
        {
            get
            {
                return _GateOut;
            }
            set
            {
                OnGateOutChanging(value);
                ReportPropertyChanging("GateOut");
                _GateOut = StructuralObject.SetValidValue(value, "GateOut");
                ReportPropertyChanged("GateOut");
                OnGateOutChanged();
            }
        }
        private Nullable<global::System.DateTime> _GateOut;
        partial void OnGateOutChanging(Nullable<global::System.DateTime> value);
        partial void OnGateOutChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Int32> IdUser
        {
            get
            {
                return _IdUser;
            }
            set
            {
                OnIdUserChanging(value);
                ReportPropertyChanging("IdUser");
                _IdUser = StructuralObject.SetValidValue(value, "IdUser");
                ReportPropertyChanged("IdUser");
                OnIdUserChanged();
            }
        }
        private Nullable<global::System.Int32> _IdUser;
        partial void OnIdUserChanging(Nullable<global::System.Int32> value);
        partial void OnIdUserChanged();

        #endregion

        #region Propiedades de navegación
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("DatabaseModel", "FK_Record_ToUser", "User")]
        public User User
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<User>("DatabaseModel.FK_Record_ToUser", "User").Value;
            }
            set
            {
                ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<User>("DatabaseModel.FK_Record_ToUser", "User").Value = value;
            }
        }
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [BrowsableAttribute(false)]
        [DataMemberAttribute()]
        public EntityReference<User> UserReference
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<User>("DatabaseModel.FK_Record_ToUser", "User");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedReference<User>("DatabaseModel.FK_Record_ToUser", "User", value);
                }
            }
        }

        #endregion

    }
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="DatabaseModel", Name="User")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class User : EntityObject
    {
        #region Método de generador
    
        /// <summary>
        /// Crear un nuevo objeto User.
        /// </summary>
        /// <param name="idUser">Valor inicial de la propiedad IdUser.</param>
        public static User CreateUser(global::System.Int32 idUser)
        {
            User user = new User();
            user.IdUser = idUser;
            return user;
        }

        #endregion

        #region Propiedades simples
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 IdUser
        {
            get
            {
                return _IdUser;
            }
            set
            {
                if (_IdUser != value)
                {
                    OnIdUserChanging(value);
                    ReportPropertyChanging("IdUser");
                    _IdUser = StructuralObject.SetValidValue(value, "IdUser");
                    ReportPropertyChanged("IdUser");
                    OnIdUserChanged();
                }
            }
        }
        private global::System.Int32 _IdUser;
        partial void OnIdUserChanging(global::System.Int32 value);
        partial void OnIdUserChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Username
        {
            get
            {
                return _Username;
            }
            set
            {
                OnUsernameChanging(value);
                ReportPropertyChanging("Username");
                _Username = StructuralObject.SetValidValue(value, true, "Username");
                ReportPropertyChanged("Username");
                OnUsernameChanged();
            }
        }
        private global::System.String _Username;
        partial void OnUsernameChanging(global::System.String value);
        partial void OnUsernameChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String FirstName
        {
            get
            {
                return _FirstName;
            }
            set
            {
                OnFirstNameChanging(value);
                ReportPropertyChanging("FirstName");
                _FirstName = StructuralObject.SetValidValue(value, true, "FirstName");
                ReportPropertyChanged("FirstName");
                OnFirstNameChanged();
            }
        }
        private global::System.String _FirstName;
        partial void OnFirstNameChanging(global::System.String value);
        partial void OnFirstNameChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String LastName
        {
            get
            {
                return _LastName;
            }
            set
            {
                OnLastNameChanging(value);
                ReportPropertyChanging("LastName");
                _LastName = StructuralObject.SetValidValue(value, true, "LastName");
                ReportPropertyChanged("LastName");
                OnLastNameChanged();
            }
        }
        private global::System.String _LastName;
        partial void OnLastNameChanging(global::System.String value);
        partial void OnLastNameChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Password
        {
            get
            {
                return _Password;
            }
            set
            {
                OnPasswordChanging(value);
                ReportPropertyChanging("Password");
                _Password = StructuralObject.SetValidValue(value, true, "Password");
                ReportPropertyChanged("Password");
                OnPasswordChanged();
            }
        }
        private global::System.String _Password;
        partial void OnPasswordChanging(global::System.String value);
        partial void OnPasswordChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Int32> NumberGroup
        {
            get
            {
                return _NumberGroup;
            }
            set
            {
                OnNumberGroupChanging(value);
                ReportPropertyChanging("NumberGroup");
                _NumberGroup = StructuralObject.SetValidValue(value, "NumberGroup");
                ReportPropertyChanged("NumberGroup");
                OnNumberGroupChanged();
            }
        }
        private Nullable<global::System.Int32> _NumberGroup;
        partial void OnNumberGroupChanging(Nullable<global::System.Int32> value);
        partial void OnNumberGroupChanged();

        #endregion

        #region Propiedades de navegación
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("DatabaseModel", "FK_Record_ToUser", "Record")]
        public EntityCollection<Record> Record
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedCollection<Record>("DatabaseModel.FK_Record_ToUser", "Record");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedCollection<Record>("DatabaseModel.FK_Record_ToUser", "Record", value);
                }
            }
        }

        #endregion

    }

    #endregion

}
