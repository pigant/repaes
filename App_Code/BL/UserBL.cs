﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel;
using DatabaseModel;

/// <summary>
/// Descripción breve de UserBL
/// </summary>
///
  [DataObject]
  public class UserBL
  {
    private DatabaseEntities1 Bd = new DatabaseEntities1();

    public bool ValidateUser(string username, string password)
    {
        List<User> list = (from u in Bd.User
                           where u.Username == username && u.Password == password
                           select u).ToList();

        return list.Count > 0;
    }

    public User getUser(string username)
    {
      return (from u in Bd.User where u.Username == username select u).FirstOrDefault();
    }


    
  }