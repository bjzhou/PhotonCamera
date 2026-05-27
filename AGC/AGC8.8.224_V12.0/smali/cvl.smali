.class public final Lcvl;
.super Ljava/lang/Object;

# interfaces
.implements Lcqv;


# instance fields
.field private final a:Ldhi;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldhi;I)V
    .locals 0

    iput p2, p0, Lcvl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvl;->a:Ldhi;

    return-void
.end method


# virtual methods
.method public final a()Lika;
    .locals 1

    iget v0, p0, Lcvl;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lika;->t:Lika;

    return-object v0

    :pswitch_0
    sget-object v0, Lika;->f:Lika;

    return-object v0

    :pswitch_1
    sget-object v0, Lika;->c:Lika;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lmqp;
    .locals 1

    iget v0, p0, Lcvl;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lklv;->b:Lklv;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget-object v0, Lklv;->b:Lklv;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldho;->X:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldho;->X:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldho;->X:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldgu;->q:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldgu;->p:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldgu;->q:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Z
    .locals 3

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v2, Ldif;->a:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v2, Ldgu;->ae:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldgu;->ad:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x1

    return v1
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldgu;->T:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldgu;->T:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x0

    return v1
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldgu;->aa:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcvl;->a:Ldhi;

    sget-object v1, Ldgu;->aa:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x1

    return v1
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x1

    return v1
.end method

.method public final p()Z
    .locals 2

    iget v0, p0, Lcvl;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
