.class final Letx;
.super Lifk;


# instance fields
.field final synthetic a:Lebl;

.field final synthetic b:Lebi;

.field final synthetic c:Lflv;

.field final synthetic d:Lfdu;

.field final synthetic e:Lfcv;

.field final synthetic f:Leuc;


# direct methods
.method public constructor <init>(Leuc;Lebl;Lebi;Lflv;Lfdu;Lfcv;)V
    .locals 0

    iput-object p1, p0, Letx;->f:Leuc;

    iput-object p2, p0, Letx;->a:Lebl;

    iput-object p3, p0, Letx;->b:Lebi;

    iput-object p4, p0, Letx;->c:Lflv;

    iput-object p5, p0, Letx;->d:Lfdu;

    iput-object p6, p0, Letx;->e:Lfcv;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 3

    iget-object v0, p0, Letx;->f:Leuc;

    iget-object v0, v0, Leuc;->R:Lflk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Letx;->a:Lebl;

    invoke-virtual {v0}, Lebl;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Letx;->b:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_0
    iget-object v0, p0, Letx;->f:Leuc;

    iget-object v0, v0, Leuc;->R:Lflk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v0

    iget-object v2, v0, Lmbe;->i:Ljava/lang/Object;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, p0, Letx;->c:Lflv;

    invoke-virtual {v1, v0}, Lflv;->d(Lmbe;)V

    iget-object v0, p0, Letx;->a:Lebl;

    invoke-virtual {v0}, Lebl;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Letx;->d:Lfdu;

    invoke-virtual {v0}, Lfdn;->bV()V

    return-void

    :cond_3
    iget-object v0, p0, Letx;->d:Lfdu;

    invoke-virtual {v0}, Lfdn;->a()V

    return-void

    :cond_4
    iget-object v0, p0, Letx;->e:Lfcv;

    invoke-virtual {v0}, Licd;->f()V

    iget-object v0, p0, Letx;->f:Leuc;

    iget-object v0, v0, Leuc;->M:Lhke;

    invoke-virtual {v0}, Lhke;->f()V

    iget-object v0, p0, Letx;->f:Leuc;

    invoke-virtual {v0}, Leuc;->D()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Leuc;->o:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyu;

    iget v1, v1, Lgyu;->g:I

    if-lez v1, :cond_6

    invoke-virtual {v0, v1}, Leuc;->A(I)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lchk;->r()V

    return-void
.end method

.method public final onShutterTouchStart()V
    .locals 1

    iget-object v0, p0, Letx;->f:Leuc;

    iget-object v0, v0, Leuc;->M:Lhke;

    invoke-virtual {v0}, Lhke;->e()V

    return-void
.end method
