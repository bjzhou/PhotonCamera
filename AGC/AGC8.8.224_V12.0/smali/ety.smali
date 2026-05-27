.class public final Lety;
.super Ljava/lang/Object;

# interfaces
.implements Lhwf;


# instance fields
.field final synthetic a:Lchk;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Letp;I)V
    .locals 0

    iput p2, p0, Lety;->b:I

    iput-object p1, p0, Lety;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuc;I)V
    .locals 0

    iput p2, p0, Lety;->b:I

    iput-object p1, p0, Lety;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuj;I)V
    .locals 0

    iput p2, p0, Lety;->b:I

    iput-object p1, p0, Lety;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Levk;I)V
    .locals 0

    iput p2, p0, Lety;->b:I

    iput-object p1, p0, Lety;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lety;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Levk;

    iget-object v0, v0, Levk;->q:Ldpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ldpl;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lety;->a:Lchk;

    iget-boolean v1, v0, Lchk;->a:Z

    if-nez v1, :cond_0

    sget-object v0, Leuj;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Skipping re-showing UI since mode is stopped."

    const/16 v2, 0x7a2

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Leqi;->a(Z)V

    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0}, Leqi;->e()V

    :cond_1
    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->K:Lhxt;

    invoke-virtual {v0}, Lhxt;->b()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->E:Ldpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ldpl;->c()V

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuc;

    iget-object v0, v0, Leuc;->u:Ldpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ldpl;->c()V

    :cond_3
    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuc;

    iget-object v0, v0, Leuc;->k:Litm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->K(Z)V

    return-void

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lety;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leqi;->a(Z)V

    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0}, Leqi;->d()V

    :cond_0
    iget-object v0, p0, Lety;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->K:Lhxt;

    invoke-virtual {v0}, Lhxt;->a()V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bS(I)V
    .locals 0

    iget p1, p0, Lety;->b:I

    return-void
.end method
