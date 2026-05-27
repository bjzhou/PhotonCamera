.class final Lfmu;
.super Lifk;


# instance fields
.field final synthetic a:Lhvz;

.field final synthetic b:Lfng;


# direct methods
.method public constructor <init>(Lfng;Lhvz;)V
    .locals 0

    iput-object p1, p0, Lfmu;->b:Lfng;

    iput-object p2, p0, Lfmu;->a:Lhvz;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 6

    iget-object v0, p0, Lfmu;->b:Lfng;

    iget-boolean v1, v0, Lfng;->k:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lfng;->j:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lfng;->l:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lfng;->B()V

    return-void

    :cond_1
    iget-object v0, p0, Lfmu;->a:Lhvz;

    invoke-virtual {v0}, Lhvu;->d()V

    iget-object v0, p0, Lfmu;->b:Lfng;

    iget-object v0, v0, Lfng;->r:Leww;

    new-instance v1, Lfmt;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfmt;-><init>(Lfmu;I)V

    iget-object v3, v0, Leww;->b:Lewz;

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Leww;->d:Z

    if-nez v3, :cond_2

    iget v3, v0, Leww;->n:I

    if-nez v3, :cond_2

    iget-boolean v3, v0, Leww;->u:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Leww;->c:Lewd;

    iget-object v3, v3, Lewd;->b:Lbne;

    iget-object v4, v0, Leww;->H:Landroid/os/Handler;

    new-instance v5, Lewv;

    invoke-direct {v5, v0, v1, v2}, Lewv;-><init>(Leww;Lexz;I)V

    invoke-virtual {v3, v4, v5}, Lbne;->j(Landroid/os/Handler;Lbmy;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
