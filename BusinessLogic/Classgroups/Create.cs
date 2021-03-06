using System.Threading;
using System.Threading.Tasks;
using MediatR;
using Models;
using Persistence;

namespace BusinessLogic.Classgroups
{

    public class Create
    {
        public class Command : IRequest
        {
            public Classgroup Classgroup { get; set; }
        }

        public class Handler : IRequestHandler<Command>
        {
            private readonly SKMSDatabaseContext context;
            public Handler(SKMSDatabaseContext context)
            {
                this.context = context;

            }
            public async Task<Unit> Handle(Command request, CancellationToken cancellationToken)
            {
                 context.Classgroups.Add(request.Classgroup);

                 await context.SaveChangesAsync();

                 return Unit.Value;
            }
        }
    }


}