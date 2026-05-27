.class public final synthetic Lett;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lebl;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letu;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letw;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuc;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuf;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuh;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuj;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuy;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Levk;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfdu;I)V
    .locals 0

    iput p2, p0, Lett;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lett;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lett;->b:I

    const v1, 0x7f130008

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Levk;

    iget-object v1, v1, Levk;->h:Lfux;

    invoke-virtual {v1}, Lfux;->d()V

    check-cast v0, Lchk;

    invoke-virtual {v0}, Lchk;->k()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Levk;

    iget-object v1, v0, Levk;->c:Lkbc;

    const-string v2, "countdown#startHotshot"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Levk;->E:Lhxx;

    invoke-virtual {v1}, Lhxx;->e()V

    iget-object v0, v0, Levk;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Levk;

    iget-object v1, v0, Levk;->T:Lflk;

    if-eqz v1, :cond_0

    iget-object v0, v0, Levk;->n:Lhtg;

    iget-object v2, v1, Lflk;->c:Lfuz;

    iget-object v1, v1, Lflk;->a:Ljuf;

    invoke-virtual {v0, v2, v1}, Lhtd;->b(Lfuz;Ljuf;)V

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Lchk;

    invoke-virtual {v0}, Lchk;->k()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Levk;

    iget-object v1, v0, Levk;->c:Lkbc;

    const-string v2, "changeCamera#startHotshot"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Levk;->E:Lhxx;

    invoke-virtual {v1}, Lhxx;->e()V

    iget-object v0, v0, Levk;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Levk;

    iget-object v1, v0, Levk;->c:Lkbc;

    const-string v2, "resume#startHotshot"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Levk;->E:Lhxx;

    invoke-virtual {v1}, Lhxx;->e()V

    iget-object v0, v0, Levk;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Leuy;

    iget-object v1, v0, Leuy;->r:Lflk;

    if-eqz v1, :cond_1

    iget-object v0, v0, Leuy;->l:Lhtg;

    iget-object v2, v1, Lflk;->c:Lfuz;

    iget-object v1, v1, Lflk;->a:Ljuf;

    invoke-virtual {v0, v2, v1}, Lhtd;->b(Lfuz;Ljuf;)V

    :cond_1
    return-void

    :pswitch_6
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Leuh;

    iget-object v2, v0, Leuh;->a:Leuj;

    iget-object v2, v2, Leuj;->h:Lflp;

    invoke-virtual {v2}, Lflp;->a()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Leuh;->g(F)V

    iget-object v2, v0, Leuh;->a:Leuj;

    iget-object v2, v2, Leuj;->i:Liff;

    invoke-interface {v2}, Liff;->q()V

    iget-object v2, v0, Leuh;->a:Leuj;

    iget-object v2, v2, Leuj;->i:Liff;

    invoke-interface {v2}, Liff;->m()V

    iget-object v0, v0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->j:Lhgy;

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Leuh;

    iget-object v2, v0, Leuh;->a:Leuj;

    iget-object v2, v2, Leuj;->d:Lcgx;

    invoke-interface {v2}, Lcgx;->g()Lcha;

    move-result-object v2

    invoke-interface {v2}, Lcha;->k()V

    iget-object v2, v0, Leuh;->a:Leuj;

    iget-object v2, v2, Leuj;->j:Lhgy;

    invoke-interface {v2, v1}, Lhgy;->b(I)V

    iget-object v0, v0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->i:Liff;

    invoke-interface {v0}, Liff;->m()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Leuf;

    iget-object v0, v0, Leuf;->a:Leuj;

    invoke-virtual {v0}, Lchk;->k()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Leuj;

    iget-object v1, v0, Leuj;->L:Lflk;

    if-eqz v1, :cond_2

    iget-object v0, v0, Leuj;->f:Lhtg;

    iget-object v2, v1, Lflk;->c:Lfuz;

    iget-object v1, v1, Lflk;->a:Ljuf;

    invoke-virtual {v0, v2, v1}, Lhtd;->b(Lfuz;Ljuf;)V

    :cond_2
    return-void

    :pswitch_a
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Leuj;

    iget-object v1, v0, Leuj;->h:Lflp;

    invoke-virtual {v1}, Lflp;->c()V

    iget-object v1, v0, Leuj;->u:Leqt;

    invoke-virtual {v1}, Leqo;->a()V

    iget-object v1, v0, Leuj;->L:Lflk;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lflk;->b()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Leuj;->w(Z)V

    iget-object v1, v0, Leuj;->L:Lflk;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lflk;->b()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    :cond_3
    iget-object v1, v0, Leuj;->x:Lfdc;

    invoke-virtual {v1}, Lfdc;->c()V

    iget-object v0, v0, Leuj;->N:Lhdk;

    invoke-virtual {v0}, Lhdk;->g()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Lchk;

    invoke-virtual {v0}, Lchk;->k()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->d()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Lebl;

    invoke-virtual {v0}, Lebl;->c()V

    return-void

    :pswitch_e
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Letw;

    iget-object v1, v0, Letw;->a:Leuc;

    iget-boolean v2, v1, Lchk;->a:Z

    if-nez v2, :cond_4

    sget-object v0, Leuc;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Module has stopped. Do not perform any Astro actions."

    const/16 v2, 0x790

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_4
    iget-boolean v2, v1, Leuc;->H:Z

    if-nez v2, :cond_8

    iget-object v1, v1, Leuc;->o:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgyu;->a:Lgyu;

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->s:Liff;

    invoke-interface {v1}, Liff;->g()V

    :cond_5
    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->N:Lfcv;

    invoke-virtual {v1}, Licd;->f()V

    iget-object v1, v0, Letw;->a:Leuc;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Leuc;->C(Z)V

    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->E:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->E:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckq;

    invoke-interface {v1}, Lckq;->j()V

    :cond_6
    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->F:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->F:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    invoke-interface {v1}, Lhms;->l()V

    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->F:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    invoke-interface {v1}, Lhms;->f()V

    :cond_7
    iget-object v1, v0, Letw;->a:Leuc;

    iput-boolean v2, v1, Leuc;->H:Z

    iget-object v1, v1, Leuc;->k:Litm;

    invoke-interface {v1}, Litm;->h()F

    move-result v1

    sget-object v2, Leuc;->c:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->k:Litm;

    sget-object v2, Leuc;->c:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Litm;->F(F)V

    iget-object v0, v0, Letw;->a:Leuc;

    iget-object v0, v0, Leuc;->k:Litm;

    invoke-interface {v0}, Litm;->h()F

    move-result v1

    invoke-interface {v0, v1}, Litm;->D(F)V

    :cond_8
    return-void

    :pswitch_f
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Letw;

    iget-object v1, v0, Letw;->a:Leuc;

    iget-object v1, v1, Leuc;->N:Lfcv;

    invoke-virtual {v1}, Licd;->f()V

    iget-object v0, v0, Letw;->a:Leuc;

    iget-object v0, v0, Leuc;->p:Lfdu;

    invoke-virtual {v0}, Lfdn;->bW()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Letw;

    iget-object v0, v0, Letw;->a:Leuc;

    iget-object v0, v0, Leuc;->N:Lfcv;

    iget-object v1, v0, Lfcv;->f:Licf;

    invoke-virtual {v0, v1}, Licd;->g(Licf;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Letw;

    iget-object v0, v0, Letw;->a:Leuc;

    iget-object v0, v0, Leuc;->Q:Lgrm;

    invoke-virtual {v0}, Lgrm;->c()V

    return-void

    :pswitch_12
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Leuc;

    iget-object v1, v0, Leuc;->R:Lflk;

    if-eqz v1, :cond_9

    iget-object v0, v0, Leuc;->j:Lhtg;

    iget-object v2, v1, Lflk;->c:Lfuz;

    iget-object v1, v1, Lflk;->a:Ljuf;

    invoke-virtual {v0, v2, v1}, Lhtd;->b(Lfuz;Ljuf;)V

    :cond_9
    return-void

    :pswitch_13
    iget-object v0, p0, Lett;->a:Ljava/lang/Object;

    check-cast v0, Letu;

    iget-object v0, v0, Letu;->a:Leuc;

    iget-boolean v1, v0, Lchk;->a:Z

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Lchk;->k()V

    iget-object v1, v0, Leuc;->q:Ldhi;

    sget-object v2, Ldho;->as:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Leuc;->k:Litm;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Litm;->B(Z)V

    :cond_b
    iget-object v1, v0, Leuc;->S:Lhsa;

    if-eqz v1, :cond_c

    iget-object v1, v0, Leuc;->d:Ldbf;

    invoke-virtual {v1}, Ldbf;->j()Z

    :cond_c
    iget-object v1, v0, Leuc;->q:Ldhi;

    sget-object v2, Ldho;->ci:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Leuc;->D:Lhxx;

    invoke-virtual {v1}, Lhxx;->f()V

    iget-object v1, v0, Leuc;->o:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyu;

    sget-object v2, Lgyu;->a:Lgyu;

    invoke-virtual {v1, v2}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, v0, Leuc;->D:Lhxx;

    invoke-virtual {v0}, Lhxx;->e()V

    return-void

    :cond_d
    :goto_0
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
