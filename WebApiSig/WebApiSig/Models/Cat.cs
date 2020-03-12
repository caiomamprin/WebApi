using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSig.Models
{
    public class Cat
    {
        public long Id { get; set; }
        [Required(ErrorMessage ="Nome do Gato é Obrigatório")]
        public string Name { get; set; }
        public long Age { get; set; }
        [Required(ErrorMessage = "Código do Proprietário é obrigatório")]
        public long OwnerId { get; set; }
        //Variável de Navegação
        public Owner Owner { get; set; }
    }
}
