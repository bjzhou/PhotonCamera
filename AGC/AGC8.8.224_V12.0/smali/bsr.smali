.class final Lbsr;
.super Ljava/lang/Object;

# interfaces
.implements Lbqn;


# instance fields
.field final synthetic a:Lbss;

.field final synthetic b:Lva;


# direct methods
.method public constructor <init>(Lbss;Lva;[B[B[B)V
    .locals 0

    iput-object p1, p0, Lbsr;->a:Lbss;

    iput-object p2, p0, Lbsr;->b:Lva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lbsr;->a:Lbss;

    iget-object v1, p0, Lbsr;->b:Lva;

    invoke-virtual {v0, v1}, Lbss;->e(Lva;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsr;->a:Lbss;

    iget-object v1, p0, Lbsr;->b:Lva;

    iget-object v2, v0, Lbss;->a:Lbrq;

    iget-object v2, v2, Lbrq;->o:Lbry;

    if-eqz p1, :cond_0

    iget-object v3, v1, Lva;->a:Ljava/lang/Object;

    invoke-interface {v3}, Lbqo;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lbry;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, v0, Lbss;->c:Ljava/lang/Object;

    iget-object p1, v0, Lbss;->b:Lbro;

    check-cast p1, Lbrt;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lbrt;->e(I)V

    return-void

    :cond_0
    iget-object v2, v0, Lbss;->b:Lbro;

    iget-object v3, v1, Lva;->b:Ljava/lang/Object;

    iget-object v4, v1, Lva;->a:Ljava/lang/Object;

    invoke-interface {v4}, Lbqo;->g()I

    move-result v5

    iget-object v6, v0, Lbss;->d:Lbrn;

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lbro;->d(Lbqb;Ljava/lang/Object;Lbqo;ILbqb;)V

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lbsr;->a:Lbss;

    iget-object v1, p0, Lbsr;->b:Lva;

    invoke-virtual {v0, v1}, Lbss;->e(Lva;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsr;->a:Lbss;

    iget-object v1, p0, Lbsr;->b:Lva;

    iget-object v2, v0, Lbss;->b:Lbro;

    iget-object v0, v0, Lbss;->d:Lbrn;

    iget-object v1, v1, Lva;->a:Ljava/lang/Object;

    invoke-interface {v1}, Lbqo;->g()I

    move-result v3

    invoke-interface {v2, v0, p1, v1, v3}, Lbro;->b(Lbqb;Ljava/lang/Exception;Lbqo;I)V

    :cond_0
    return-void
.end method
