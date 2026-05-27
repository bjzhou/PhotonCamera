.class final Levg;
.super Lifk;


# instance fields
.field final synthetic a:Lebi;

.field final synthetic b:Lebl;

.field final synthetic c:Lfmd;

.field final synthetic d:Lmqp;

.field final synthetic e:Levk;


# direct methods
.method public constructor <init>(Levk;Lebi;Lebl;Lfmd;Lmqp;)V
    .locals 0

    iput-object p1, p0, Levg;->e:Levk;

    iput-object p2, p0, Levg;->a:Lebi;

    iput-object p3, p0, Levg;->b:Lebl;

    iput-object p4, p0, Levg;->c:Lfmd;

    iput-object p5, p0, Levg;->d:Lmqp;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 3

    iget-object v0, p0, Levg;->e:Levk;

    iget-object v0, v0, Levk;->T:Lflk;

    if-nez v0, :cond_0

    sget-object v0, Levk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Not taking picture because there\'s no active camera."

    const/16 v2, 0x7b8

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lflk;->i()Lmbe;

    move-result-object v0

    iget-object v1, p0, Levg;->a:Lebi;

    iget-boolean v1, v1, Lebi;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Levg;->b:Lebl;

    iget-object v1, v1, Lebl;->b:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lmbe;->i:Ljava/lang/Object;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Levg;->c:Lfmd;

    invoke-interface {v1, v0}, Lfmd;->d(Lmbe;)V

    iget-object v0, p0, Levg;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Levg;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckr;

    invoke-interface {v0}, Lckr;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Levg;->e:Levk;

    iget-object v0, v0, Levk;->N:Lhke;

    invoke-virtual {v0}, Lhke;->f()V

    iget-object v0, p0, Levg;->e:Levk;

    iget-object v1, v0, Levk;->x:Lhwd;

    invoke-virtual {v1}, Lhwd;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Levk;->y:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyu;

    iget v1, v1, Lgyu;->g:I

    if-lez v1, :cond_4

    invoke-virtual {v0, v1}, Levk;->x(I)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lchk;->r()V

    return-void
.end method

.method public final onShutterButtonPressedStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Levg;->b:Lebl;

    iget-object p1, p1, Lebl;->b:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Levg;->e:Levk;

    iget-object p1, p1, Levk;->T:Lflk;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lflk;->i()Lmbe;

    move-result-object p1

    iget-object p1, p1, Lmbe;->i:Ljava/lang/Object;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_0
    return-void
.end method

.method public final onShutterTouchStart()V
    .locals 1

    iget-object v0, p0, Levg;->e:Levk;

    iget-object v0, v0, Levk;->N:Lhke;

    invoke-virtual {v0}, Lhke;->e()V

    return-void
.end method
