.class public final Leys;
.super Ljava/lang/Object;

# interfaces
.implements Lhdv;


# instance fields
.field public A:Ldja;

.field public final B:Lgxb;

.field public final C:Lbkb;

.field private final D:Leyu;

.field public final a:Landroid/content/Context;

.field public final b:Ljwb;

.field public final c:Ldhi;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljuf;

.field public final f:Landroid/app/Activity;

.field public final g:Z

.field public final h:Z

.field public final i:Ldft;

.field public final j:Ldga;

.field public final k:Lgus;

.field public final l:Lfbz;

.field public final m:Lflf;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Lmqp;

.field public w:Lmqp;

.field public final x:Lhzh;

.field public final y:Loiw;

.field public final z:Ljuh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcdi;Ljwb;Ldhi;Landroid/content/Context;ZZLdft;Ldga;Lhzh;Leyu;Lgus;Lfbz;Lflf;Ljava/util/concurrent/Executor;Loiw;Ljuh;Lbkb;Lgxb;[B[B[B[B[B[B)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Leys;->s:I

    iput v1, v0, Leys;->t:I

    const-string v1, "-1"

    iput-object v1, v0, Leys;->u:Ljava/lang/String;

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Leys;->v:Lmqp;

    iput-object v1, v0, Leys;->w:Lmqp;

    move-object v1, p1

    iput-object v1, v0, Leys;->a:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Leys;->b:Ljwb;

    move-object v2, p4

    iput-object v2, v0, Leys;->c:Ldhi;

    invoke-static/range {p15 .. p15}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, v0, Leys;->d:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    iput-boolean v2, v0, Leys;->o:Z

    invoke-interface {p3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Leys;->p:Z

    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iput-object v1, v0, Leys;->e:Ljuf;

    move-object v1, p5

    check-cast v1, Landroid/app/Activity;

    iput-object v1, v0, Leys;->f:Landroid/app/Activity;

    move v1, p6

    iput-boolean v1, v0, Leys;->g:Z

    move v1, p7

    iput-boolean v1, v0, Leys;->h:Z

    move-object v1, p8

    iput-object v1, v0, Leys;->i:Ldft;

    move-object v1, p9

    iput-object v1, v0, Leys;->j:Ldga;

    move-object v1, p10

    iput-object v1, v0, Leys;->x:Lhzh;

    move-object/from16 v1, p14

    iput-object v1, v0, Leys;->m:Lflf;

    move-object v1, p11

    iput-object v1, v0, Leys;->D:Leyu;

    move-object/from16 v1, p12

    iput-object v1, v0, Leys;->k:Lgus;

    move-object/from16 v1, p13

    iput-object v1, v0, Leys;->l:Lfbz;

    move-object/from16 v1, p16

    iput-object v1, v0, Leys;->y:Loiw;

    move-object/from16 v1, p17

    iput-object v1, v0, Leys;->z:Ljuh;

    move-object/from16 v1, p18

    iput-object v1, v0, Leys;->C:Lbkb;

    move-object/from16 v1, p19

    iput-object v1, v0, Leys;->B:Lgxb;

    invoke-virtual {p2}, Lcdi;->i()Ljuf;

    move-result-object v1

    new-instance v3, Leym;

    invoke-direct {v3, p0, v2}, Leym;-><init>(Leys;I)V

    invoke-virtual {v1, v3}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Leys;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Levi;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Levi;-><init>(Leys;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lhec;)V
    .locals 3

    iget-object v0, p0, Leys;->D:Leyu;

    new-instance v1, Lfxf;

    invoke-direct {v1, p0, p1}, Lfxf;-><init>(Leys;Lhec;)V

    iput-object v1, v0, Leyu;->d:Lfxf;

    iget-object p1, p0, Leys;->e:Ljuf;

    new-instance v1, Leym;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Leym;-><init>(Leyu;I)V

    invoke-virtual {p1, v1}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Leys;->D:Leyu;

    iget-object v0, p1, Leyu;->b:Ldhi;

    sget-object v1, Ldht;->a:[Ljava/lang/String;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, p1, Leyu;->c:Lhzh;

    invoke-virtual {v0}, Lhzh;->d()Lnou;

    move-result-object v0

    new-instance v1, Lcmc;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v2}, Lcmc;-><init>(Leyu;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c()Lkvy;
    .locals 2

    iget-object v0, p0, Leys;->c:Ldhi;

    sget-object v1, Ldht;->l:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leys;->C:Lbkb;

    invoke-virtual {v0}, Lbkb;->T()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leys;->c:Ldhi;

    sget-object v1, Ldht;->m:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkvy;->e:Lkvy;

    goto :goto_0

    :cond_0
    sget-object v0, Lkvy;->d:Lkvy;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lkvy;->c:Lkvy;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Leys;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leys;->A:Ldja;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Leys;->q:Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Leys;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leys;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leys;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leys;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Leys;->A:Ldja;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leys;->q:Z

    :cond_0
    return-void
.end method

.method public final f(Landroid/graphics/Point;)V
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget-object p1, p0, Leys;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Levy;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Levy;-><init>(Leys;Landroid/graphics/Point;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Leys;->c:Ldhi;

    sget-object v1, Ldht;->q:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0
.end method

.method public final h(Lkpb;I)V
    .locals 3

    iget-object v0, p0, Leys;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lpi;

    const/16 v2, 0xc

    invoke-direct {v1, p0, p1, p2, v2}, Lpi;-><init>(Leys;Lkpb;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Leys;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Levi;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Levi;-><init>(Leys;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Leys;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Levi;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Levi;-><init>(Leys;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
