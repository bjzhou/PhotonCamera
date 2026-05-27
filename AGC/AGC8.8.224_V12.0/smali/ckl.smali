.class public final Lckl;
.super Ljava/lang/Object;

# interfaces
.implements Lckr;


# instance fields
.field public final a:Lhwc;

.field public final b:Lfcv;

.field public final c:Liff;

.field public final d:Logd;

.field public e:Lika;

.field private final f:Lebl;

.field private final g:Lfdu;

.field private final h:Ljuh;

.field private final i:Lell;

.field private final j:Lhgy;

.field private final k:Lmqp;

.field private final l:Ldfo;

.field private final m:Lebi;

.field private final n:Litm;

.field private final o:Lmrl;

.field private final p:Ldhi;

.field private final q:Lkbc;

.field private final r:Lgxb;


# direct methods
.method public constructor <init>(Lhwc;Lebl;Lfdu;Lfcv;Liff;Ljuh;Lell;Logd;Lhgy;Lmqp;Ldfo;Lgxb;Lebi;Litm;Lmrl;Ldhi;Lkbc;[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lckl;->a:Lhwc;

    move-object v1, p2

    iput-object v1, v0, Lckl;->f:Lebl;

    move-object v1, p3

    iput-object v1, v0, Lckl;->g:Lfdu;

    move-object v1, p4

    iput-object v1, v0, Lckl;->b:Lfcv;

    move-object v1, p5

    iput-object v1, v0, Lckl;->c:Liff;

    move-object v1, p6

    iput-object v1, v0, Lckl;->h:Ljuh;

    move-object v1, p7

    iput-object v1, v0, Lckl;->i:Lell;

    move-object v1, p8

    iput-object v1, v0, Lckl;->d:Logd;

    move-object v1, p9

    iput-object v1, v0, Lckl;->j:Lhgy;

    move-object v1, p10

    iput-object v1, v0, Lckl;->k:Lmqp;

    move-object v1, p11

    iput-object v1, v0, Lckl;->l:Ldfo;

    move-object v1, p12

    iput-object v1, v0, Lckl;->r:Lgxb;

    move-object v1, p13

    iput-object v1, v0, Lckl;->m:Lebi;

    move-object/from16 v1, p14

    iput-object v1, v0, Lckl;->n:Litm;

    move-object/from16 v1, p15

    iput-object v1, v0, Lckl;->o:Lmrl;

    move-object/from16 v1, p16

    iput-object v1, v0, Lckl;->p:Ldhi;

    move-object/from16 v1, p17

    iput-object v1, v0, Lckl;->q:Lkbc;

    sget-object v1, Lika;->a:Lika;

    iput-object v1, v0, Lckl;->e:Lika;

    return-void
.end method

.method private final n()V
    .locals 3

    sget-object v0, Lika;->a:Lika;

    iget-object v0, p0, Lckl;->e:Lika;

    invoke-virtual {v0}, Lika;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lckl;->e:Lika;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Finishing Auto Night Sight shutter is not supported in mode "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lckl;->c:Liff;

    invoke-interface {v0}, Liff;->p()V

    return-void

    :sswitch_1
    iget-object v0, p0, Lckl;->c:Liff;

    invoke-interface {v0}, Liff;->o()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lckl;->f:Lebl;

    invoke-virtual {v0}, Lebl;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->g:Lfdu;

    invoke-virtual {v0}, Lfdn;->bV()V

    return-void

    :cond_0
    iget-object v0, p0, Lckl;->g:Lfdu;

    invoke-virtual {v0}, Lfdn;->a()V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lckl;->b:Lfcv;

    invoke-virtual {v0}, Licd;->f()V

    iget-object v0, p0, Lckl;->c:Liff;

    invoke-interface {v0}, Liff;->q()V

    iget-object v0, p0, Lckl;->l:Ldfo;

    invoke-virtual {v0}, Ldfo;->e()V

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->m:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lckq;->b(Z)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lckl;->f:Lebl;

    iget-object p1, p1, Lebl;->b:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lckl;->n()V

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lckl;->h:Ljuh;

    iget-object v0, p0, Lckl;->g:Lfdu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcdw;

    const/16 v2, 0x12

    invoke-direct {v1, v0, v2}, Lcdw;-><init>(Lfdu;I)V

    invoke-virtual {p1, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lckl;->g:Lfdu;

    invoke-virtual {v0}, Lfdn;->a()V

    return-void
.end method

.method public final e(Lika;Ljuf;)V
    .locals 3

    iput-object p1, p0, Lckl;->e:Lika;

    iget-object v0, p0, Lckl;->g:Lfdu;

    invoke-virtual {v0}, Lfdn;->f()V

    iget-object v0, p0, Lckl;->b:Lfcv;

    iget-object v1, p0, Lckl;->i:Lell;

    invoke-virtual {v0, v1}, Licd;->e(Lell;)V

    iget-object v0, p0, Lckl;->b:Lfcv;

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lckl;->f:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    new-instance v1, Lccp;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lccp;-><init>(Lckl;Lika;I)V

    iget-object p1, p0, Lckl;->h:Ljuh;

    invoke-interface {v0, v1, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lckl;->g:Lfdu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcfh;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lcfh;-><init>(Lfdu;I)V

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final f(Lftg;Ljuf;)V
    .locals 3

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    iget-object v1, p0, Lckl;->e:Lika;

    invoke-interface {p1}, Lftg;->i()Lmbe;

    move-result-object v2

    iget-object v2, v2, Lmbe;->g:Ljava/lang/Object;

    invoke-interface {p1}, Lftg;->i()Lmbe;

    move-result-object p1

    iget-object p1, p1, Lmbe;->a:Ljava/lang/Object;

    check-cast v2, Lgcb;

    invoke-interface {v0, v1, v2, p1}, Lckq;->a(Lika;Lgcb;Ljvs;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lckl;->f:Lebl;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lebl;->h(Z)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->q:Lkbc;

    const-string v1, "toggle#disableInteraction"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-interface {v0}, Lckq;->f()V

    iget-object v0, p0, Lckl;->q:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    :cond_0
    iget-object v0, p0, Lckl;->q:Lkbc;

    const-string v1, "lockExtendedSignal"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lckl;->f:Lebl;

    invoke-virtual {v0}, Lebl;->f()V

    iget-object v0, p0, Lckl;->q:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lckl;->f:Lebl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lebl;->h(Z)V

    return-void
.end method

.method public final i(FJ)V
    .locals 3

    iget-object v0, p0, Lckl;->p:Ldhi;

    sget-object v1, Ldgv;->q:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lckl;->e:Lika;

    sget-object v1, Lika;->b:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lckl;->l:Ldfo;

    new-instance v1, Letz;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Letz;-><init>(Lckl;I)V

    invoke-virtual {v0, v1}, Ldfo;->f(Ldfn;)V

    :cond_0
    iget-object v0, p0, Lckl;->l:Ldfo;

    invoke-virtual {v0}, Ldfo;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lckl;->b:Lfcv;

    invoke-virtual {v0, p1}, Lfcv;->b(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lckl;->b:Lfcv;

    invoke-virtual {v0, p1}, Lfcv;->b(F)V

    :cond_2
    :goto_0
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    iget-object v1, p0, Lckl;->c:Liff;

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, p2, p3, v2}, Liff;->D(IJZ)V

    iget-object v1, p0, Lckl;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lckl;->m:Lebi;

    iget-boolean v1, v1, Lebi;->h:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lckl;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckq;

    invoke-static {p2, p3}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lckq;->x(Lj$/time/Duration;I)V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lckl;->r:Lgxb;

    invoke-virtual {p1, p2, p3}, Lgxb;->l(J)V

    invoke-direct {p0}, Lckl;->n()V

    iget-object p1, p0, Lckl;->l:Ldfo;

    invoke-virtual {p1}, Ldfo;->e()V

    :cond_4
    return-void
.end method

.method public final j(ZLj$/time/Duration;)V
    .locals 2

    iget-object v0, p0, Lckl;->q:Lkbc;

    const-string v1, "soundPlayer#play"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lckl;->j:Lhgy;

    const v1, 0x7f130024

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->m:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-interface {v0, p2}, Lckq;->D(Lj$/time/Duration;)Z

    move-result v1

    goto :goto_0

    :cond_0
    :goto_0
    iget-object p2, p0, Lckl;->o:Lmrl;

    invoke-interface {p2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhyt;

    iget-object p2, p2, Lhyt;->a:Lhys;

    iget-object p2, p2, Lhys;->i:Lhyn;

    if-nez v1, :cond_1

    sget-object v0, Lhyn;->a:Lhyn;

    invoke-virtual {p2, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lhyn;->e:Lhyn;

    invoke-virtual {p2, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lckl;->n:Litm;

    invoke-interface {p2}, Litm;->n()V

    :cond_1
    iget-object p2, p0, Lckl;->q:Lkbc;

    const-string v0, "stateChart#takePicture"

    invoke-interface {p2, v0}, Lkbc;->g(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lckl;->g:Lfdu;

    invoke-virtual {p1}, Lfdn;->i()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lckl;->g:Lfdu;

    invoke-virtual {p1}, Lfdn;->d()V

    :goto_1
    iget-object p1, p0, Lckl;->q:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-interface {v0}, Lckq;->t()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-interface {v0}, Lckq;->v()V

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-interface {v0}, Lckq;->m()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->k:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-interface {v0}, Lckq;->m()V

    :cond_0
    iget-object v0, p0, Lckl;->f:Lebl;

    invoke-virtual {v0}, Lebl;->j()V

    return-void
.end method
