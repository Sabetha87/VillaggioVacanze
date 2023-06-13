﻿using VillaggioVacanze.Commons;
using VillaggioVacanze.Entities;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using VillaggioVacanze.DB.Entities;

namespace VillaggioVacanze.Models
{
    public class UserModel
    {
       
        public string UserName { get; set; }

        [EmailAddress]
        public string Email { get; set; }

        [DataType(DataType.Password)]
        [MinLength(ConstantValues.PasswordMinLenght, ErrorMessage = "The {0} must be at least {1} characters long.")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm Password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

     
    }
}