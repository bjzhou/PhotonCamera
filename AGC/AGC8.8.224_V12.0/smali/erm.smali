.class public final synthetic Lerm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lchh;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lero;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lert;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lerx;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lesz;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letj;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letk;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leto;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letp;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letr;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuc;I)V
    .locals 0

    iput p2, p0, Lerm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerm;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lerm;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Leuc;

    iget-object v3, v0, Leuc;->w:Lebl;

    invoke-virtual {v3}, Lebl;->j()V

    iget-object v3, v0, Leuc;->n:Lflp;

    invoke-virtual {v3}, Lflp;->c()V

    invoke-virtual {v0, v1}, Leuc;->C(Z)V

    iget-object v1, v0, Leuc;->p:Lfdu;

    invoke-virtual {v1}, Lfdn;->a()V

    iget-object v1, v0, Leuc;->R:Lflk;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lflk;->b()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Leuc;->y(Z)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Lchk;

    invoke-virtual {v0}, Lchk;->k()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letr;

    iget-object v3, v0, Letr;->a:Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Letp;

    iget-object v4, v3, Letp;->aa:Ljvk;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v4, v3, Letp;->k:Litm;

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Litm;->q(Z)V

    iget-object v1, v3, Letp;->ac:Ldhi;

    sget-object v4, Ldho;->aj:Ldhj;

    invoke-interface {v1, v4}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v3, Letp;->n:Ldbf;

    invoke-virtual {v1}, Ldbf;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, Letp;->ap:Lfuz;

    invoke-virtual {v1}, Lklw;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v3, Letp;->k:Litm;

    invoke-interface {v1}, Litm;->p()V

    :cond_1
    iget-object v1, v3, Letp;->l:Ldol;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ldol;->h()V

    :cond_2
    iget-object v1, v3, Letp;->D:Lflp;

    invoke-virtual {v1}, Lflp;->c()V

    iget-object v1, v3, Letp;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v3, Letp;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckr;

    invoke-interface {v1}, Lckr;->l()V

    :cond_3
    iget-object v1, v3, Letp;->x:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v3, Letp;->x:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    invoke-interface {v1}, Lhms;->s()V

    iget-object v1, v3, Letp;->x:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    sget-object v4, Lmpx;->a:Lmpx;

    invoke-interface {v1, v4}, Lhms;->m(Lmqp;)V

    :cond_4
    iget-object v1, v3, Letp;->ae:Lebl;

    invoke-virtual {v1}, Lebl;->j()V

    iget-object v1, v3, Letp;->ae:Lebl;

    iget-object v1, v1, Lebl;->b:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v3, Letp;->i:Liff;

    invoke-interface {v1}, Liff;->h()V

    :cond_5
    iget-object v1, v3, Letp;->m:Lhwu;

    invoke-virtual {v1, v2}, Lhwu;->d(Z)V

    iget-object v1, v3, Letp;->t:Libj;

    invoke-interface {v1, v2}, Libj;->l(Z)V

    iget-object v1, v3, Letp;->B:Lcgy;

    invoke-interface {v1}, Lcgy;->g()Lcha;

    move-result-object v1

    invoke-interface {v1}, Lcha;->f()V

    iget-object v1, v3, Letp;->ab:Lgeh;

    invoke-interface {v1}, Lgeh;->j()V

    iget-object v1, v3, Letp;->ah:Lell;

    sget-object v4, Lelm;->d:Lelm;

    invoke-interface {v1, v4}, Lell;->k(Lelm;)V

    iget-object v1, v3, Letp;->al:Lgdz;

    invoke-virtual {v1}, Lgdz;->e()V

    iput-boolean v2, v0, Letr;->c:Z

    iget-object v0, v0, Letr;->b:Ljvx;

    invoke-virtual {v0}, Ljvx;->c()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Leto;

    iget-object v1, v0, Leto;->a:Letp;

    invoke-virtual {v1}, Letp;->D()V

    iget-object v1, v0, Leto;->a:Letp;

    iget-object v1, v1, Letp;->w:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfeu;

    iget-boolean v1, v1, Lfeu;->o:Z

    if-nez v1, :cond_6

    iget-object v0, v0, Leto;->a:Letp;

    iget-object v0, v0, Letp;->C:Lhgy;

    const v1, 0x7f130008

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    :cond_6
    return-void

    :pswitch_3
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letk;

    iget-object v0, v0, Letk;->a:Letp;

    invoke-virtual {v0, v2}, Letp;->B(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letj;

    iget-object v0, v0, Letj;->e:Letp;

    invoke-virtual {v0, v2}, Letp;->B(Z)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letp;

    iget-object v1, v0, Letp;->g:Lkbc;

    const-string v2, "resume#startHotshot"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Letp;->G:Lhxx;

    invoke-virtual {v1}, Lhxx;->e()V

    iget-object v0, v0, Letp;->g:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Lchk;

    invoke-virtual {v0}, Lchk;->r()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Lchk;

    invoke-virtual {v0}, Lchk;->k()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letp;

    iget-object v2, v0, Letp;->n:Ldbf;

    invoke-virtual {v2}, Ldbf;->d()Lklv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Letp;->y(ZLklv;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letp;

    iget-object v1, v0, Letp;->g:Lkbc;

    const-string v2, "changeCamera#startHotshot"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Letp;->G:Lhxx;

    invoke-virtual {v1}, Lhxx;->e()V

    iget-object v0, v0, Letp;->g:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_a
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letp;

    iget-object v1, v0, Letp;->g:Lkbc;

    const-string v2, "countdown#startHotshot"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Letp;->G:Lhxx;

    invoke-virtual {v1}, Lhxx;->e()V

    iget-object v0, v0, Letp;->g:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letp;

    iget-object v1, v0, Letp;->Y:Lhtg;

    iget-object v2, v0, Letp;->ap:Lfuz;

    iget-object v0, v0, Letp;->V:Ljuf;

    invoke-virtual {v1, v2, v0}, Lhtd;->b(Lfuz;Ljuf;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Letp;

    invoke-virtual {v0, v2}, Letp;->B(Z)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Lesz;

    iget-object v0, v0, Lesz;->a:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lijk;

    invoke-interface {v0}, Lijk;->a()V

    return-void

    :pswitch_e
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    sget v1, Lery;->a:I

    const-string v1, "prewarmSensorService"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    check-cast v0, Lerx;

    iget-object v0, v0, Lerx;->a:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    sget v1, Lery;->a:I

    check-cast v0, Lerx;

    invoke-virtual {v0}, Lerx;->a()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    sget v1, Lery;->a:I

    const-string v1, "retrievePhenotypeFlags"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    check-cast v0, Lerx;

    iget-object v0, v0, Lerx;->a:Landroid/content/Context;

    invoke-static {v0}, Lgfw;->a(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lero;

    iget-object v1, v1, Lero;->a:Lert;

    iget-object v1, v1, Lert;->q:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhfu;

    invoke-interface {v1, v0}, Lhfu;->i(Lhfv;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    iget-boolean v1, v0, Lert;->y:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lert;->z:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lert;->q:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhfu;

    iget-object v2, v0, Lert;->A:Landroid/os/Parcelable;

    iget-object v0, v0, Lert;->B:Ljava/io/Serializable;

    invoke-interface {v1, v2, v0}, Lhfu;->h(Landroid/os/Parcelable;Ljava/io/Serializable;)V

    :cond_7
    return-void

    :pswitch_13
    iget-object v0, p0, Lerm;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lchh;->h()V

    return-void

    :cond_8
    :goto_0
    iget-object v1, v0, Leuc;->T:Lhdk;

    invoke-virtual {v1}, Lhdk;->g()V

    iget-object v1, v0, Leuc;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Leuc;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhlx;

    iget-object v3, v0, Leuc;->e:Lcgx;

    invoke-interface {v3}, Lcgx;->l()Lika;

    iget-object v3, v0, Leuc;->z:Lgla;

    invoke-virtual {v3}, Lgla;->m()V

    invoke-interface {v1}, Lhlx;->a()V

    :cond_9
    iget-object v0, v0, Leuc;->k:Litm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Litm;->K(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
