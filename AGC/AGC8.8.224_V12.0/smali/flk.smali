.class public final Lflk;
.super Ljava/lang/Object;

# interfaces
.implements Lftg;


# instance fields
.field public final a:Ljuf;

.field public final b:Lflg;

.field public final c:Lfuz;

.field private final d:Lftg;


# direct methods
.method public constructor <init>(Lftg;Ljuf;Lflg;Lfuz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lflk;->d:Lftg;

    iput-object p2, p0, Lflk;->a:Ljuf;

    iput-object p3, p0, Lflk;->b:Lflg;

    iput-object p4, p0, Lflk;->c:Lfuz;

    return-void
.end method


# virtual methods
.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0}, Lftg;->i()Lmbe;

    move-result-object v0

    iget-object v0, v0, Lmbe;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final bp(Lbkc;)Lccx;
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0, p1}, Lftg;->bp(Lbkc;)Lccx;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lkdy;)Lkad;
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0, p1}, Lftg;->c(Lkdy;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0}, Lftg;->close()V

    iget-object v0, p0, Lflk;->a:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final d()Lmqp;
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0}, Lftg;->d()Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lnou;
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0}, Lftg;->e()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lfte;Lgxl;)Lnou;
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0, p1, p2}, Lftg;->f(Lfte;Lgxl;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lflk;->a:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    return v0
.end method

.method public final h()Ljuf;
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0}, Lftg;->h()Ljuf;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lmbe;
    .locals 1

    iget-object v0, p0, Lflk;->d:Lftg;

    invoke-interface {v0}, Lftg;->i()Lmbe;

    move-result-object v0

    return-object v0
.end method
