.class final Lgmb;
.super Lkfg;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:I

.field final synthetic c:Lnph;

.field final synthetic d:Lgfz;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;ILnph;Lgfz;)V
    .locals 0

    iput-object p1, p0, Lgmb;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lgmb;->b:I

    iput-object p3, p0, Lgmb;->c:Lnph;

    iput-object p4, p0, Lgmb;->d:Lgfz;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 1

    iget-object p1, p0, Lgmb;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lgmb;->b:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lgmb;->c:Lnph;

    sget-object v0, Lcjp;->g:Lcjp;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgmb;->d:Lgfz;

    invoke-virtual {p1, p0}, Lgfz;->o(Lkfg;)V

    :cond_0
    return-void
.end method
