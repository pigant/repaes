using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

/// <summary>
/// Descripción breve de RPUser
/// </summary>
public class RPUser : RoleProvider
{
    public override string ApplicationName
    {
        get
        {
            throw new NotImplementedException();
        }

        set
        {
            throw new NotImplementedException();
        }
    }

    public override void AddUsersToRoles(string[] usernames, string[] roleNames)
    {
        throw new NotImplementedException();
    }

    public override void CreateRole(string roleName)
    {
        throw new NotImplementedException();
    }

    public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
    {
        throw new NotImplementedException();
    }

    public override string[] FindUsersInRole(string roleName, string usernameToMatch)
    {
        throw new NotImplementedException();
    }

    public override string[] GetAllRoles()
    {
        throw new NotImplementedException();
    }

    public override string[] GetRolesForUser(string username)
    {
        UserBL ubl = new UserBL();
        var user = ubl.getUser(username);
        string[] rols = new string[1];
        rols[0] =  Convert.ToString(user.NumberGroup);
        return rols;
    }

    public override string[] GetUsersInRole(string roleName)
    {
        throw new NotImplementedException();
    }

    public override bool IsUserInRole(string username, string roleName)
    {
        throw new NotImplementedException();
    }

    public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
    {
        throw new NotImplementedException();
    }

    public override bool RoleExists(string roleName)
    {
        throw new NotImplementedException();
    }
}