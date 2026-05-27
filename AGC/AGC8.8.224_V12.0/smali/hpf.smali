.class Lhpf;
.super Ljava/lang/Object;

# interfaces
.implements Lhou;


# instance fields
.field final synthetic b:Lhpg;


# direct methods
.method public constructor <init>(Lhpg;)V
    .locals 0

    iput-object p1, p0, Lhpf;->b:Lhpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lhpf;->b:Lhpg;

    invoke-virtual {v0}, Lhpg;->j()V

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic ck()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lhpf;->b:Lhpg;

    iget-object v0, v0, Lhpg;->o:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lisi;->V:Z

    invoke-interface {v0, v2}, Litm;->r(Z)V

    return-void
.end method

.method public final synthetic g()V
    .locals 0

    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
