.class final Lfyd;
.super Ljava/lang/Object;

# interfaces
.implements Lgqm;


# instance fields
.field final synthetic a:Lfye;


# direct methods
.method public constructor <init>(Lfye;)V
    .locals 0

    iput-object p1, p0, Lfyd;->a:Lfye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgqz;Lgxy;)V
    .locals 1

    iget-object v0, p0, Lfyd;->a:Lfye;

    iget-object v0, v0, Lfye;->c:Lgqm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lgqm;->a(Lgqz;Lgxy;)V

    :cond_0
    return-void
.end method

.method public final b(Lgqz;)V
    .locals 0

    return-void
.end method

.method public final c(Lgqz;Lgsa;)V
    .locals 1

    iget-object v0, p0, Lfyd;->a:Lfye;

    iget-object v0, v0, Lfye;->c:Lgqm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lgqm;->c(Lgqz;Lgsa;)V

    :cond_0
    return-void
.end method

.method public final d(Lgqz;Lbkb;)V
    .locals 1

    iget-object v0, p0, Lfyd;->a:Lfye;

    iget-object v0, v0, Lfye;->c:Lgqm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lgqm;->d(Lgqz;Lbkb;)V

    :cond_0
    iget p1, p1, Lgqz;->c:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lfyd;->a:Lfye;

    iput-boolean p2, p1, Lfye;->a:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lfyd;->a:Lfye;

    iput-boolean p2, p1, Lfye;->b:Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lfyd;->a:Lfye;

    iget-boolean p2, p1, Lfye;->a:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lfye;->b:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    iput-object p2, p1, Lfye;->c:Lgqm;

    :cond_3
    return-void
.end method
