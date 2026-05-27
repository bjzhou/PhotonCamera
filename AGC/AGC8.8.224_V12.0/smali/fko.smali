.class final Lfko;
.super Ljava/lang/Object;

# interfaces
.implements Lfkm;


# instance fields
.field final synthetic a:Lfkm;

.field final synthetic b:Lfkp;


# direct methods
.method public constructor <init>(Lfkp;Lfkm;)V
    .locals 0

    iput-object p1, p0, Lfko;->b:Lfkp;

    iput-object p2, p0, Lfko;->a:Lfkm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfkd;)V
    .locals 1

    iget-object v0, p0, Lfko;->a:Lfkm;

    invoke-interface {v0, p1}, Lfkm;->a(Lfkd;)V

    iget-object p1, p0, Lfko;->b:Lfkp;

    iget-object v0, p1, Lfkp;->a:Ldxl;

    invoke-virtual {v0, p1}, Ldxl;->f(Ldxm;)V

    return-void
.end method

.method public final b(JLfkq;)V
    .locals 1

    iget-object v0, p0, Lfko;->a:Lfkm;

    invoke-interface {v0, p1, p2, p3}, Lfkm;->b(JLfkq;)V

    iget-object p1, p0, Lfko;->b:Lfkp;

    iget-object p2, p1, Lfkp;->a:Ldxl;

    invoke-virtual {p2, p1}, Ldxl;->f(Ldxm;)V

    return-void
.end method
