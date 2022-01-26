using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Models;
using Microsoft.AspNetCore.Mvc;
using BusinessLogic.Students;

namespace Services.Controllers
{
    public class StudentsController : BaseAPIController
    {
        
    [HttpGet]

    public async Task<ActionResult<List<Student>>> GetStudent()
    {
        return await Mediator.Send(new List.Query());
    }

    
        [HttpGet("{id}")]

        public async Task<ActionResult<Student>> GetStudent(Guid id)
        {
            return await Mediator.Send(new Details.Query{Id=id});
        }
           
     [HttpPost]

     public async Task<IActionResult> CreateStudent(Student student)
     {
         return Ok(await Mediator.Send(new Create.Command {Student = student}));
     }

     [HttpPut("{id}")]

     public async Task<IActionResult> EditStudent(Guid id,Student student)
     {
         student.StudentId=id;

        return Ok(await Mediator.Send(new Edit.Command{Student =student}));
     }

     [HttpDelete("{id}")]

     public async Task<IActionResult> DeleteStudent(Guid id,Student student)
     {
         
        return Ok(await Mediator.Send(new Delete.Command{Id = id}));
     }
}
}