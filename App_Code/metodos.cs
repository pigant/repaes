using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel;

[DataObject]
public class metodos{

    private DatabaseEntities1 Db = new DatabaseEntities1();

	public metodos(){
	}
    public void AddRecord(string Patente,
                              string Nombre,
                              string Apellido){
        Db.Records.Add(
            new Record() { FirstName = Nombre, LastName = Apellido, Plate = Patente }
            // agregar la hora de ingreso.
            );
        Db.SaveChanges();
    }
    public List<Record> GetRecords(string busqueda){
        // and where gatein date == current date
        return (from r in Db.Records where r.GateOut == null orderby r.Plate select r).ToList();
    }
}