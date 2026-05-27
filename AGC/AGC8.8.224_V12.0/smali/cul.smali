.class public final Lcul;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lkbc;

.field public final b:Loiw;

.field public final c:Lmqp;

.field public final d:Lnow;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Loiw;

.field public final g:Lctv;

.field public final h:Lfbk;

.field public final i:Ljxv;

.field public final j:Ldhi;

.field public final k:Ljava/lang/Object;

.field public l:Lmqp;

.field public m:Ljye;

.field public n:Z

.field public o:Lctd;

.field public final p:Liac;

.field public final q:Ldja;

.field public final r:Ldja;

.field public final s:Lcvr;

.field public final t:Lcvm;

.field public final u:Ldne;


# direct methods
.method public constructor <init>(Loiw;Liac;Lmqp;Lctv;Lnow;Ljava/util/concurrent/ScheduledExecutorService;Ldja;Lkbc;Loiw;Lfbk;Lcvr;Lcvm;Ljxv;Ldja;Ldhi;Ldne;[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcul;->k:Ljava/lang/Object;

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lcul;->l:Lmqp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcul;->n:Z

    move-object v1, p8

    iput-object v1, v0, Lcul;->a:Lkbc;

    move-object v1, p5

    iput-object v1, v0, Lcul;->d:Lnow;

    move-object v1, p6

    iput-object v1, v0, Lcul;->e:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p7

    iput-object v1, v0, Lcul;->r:Ldja;

    move-object v1, p9

    iput-object v1, v0, Lcul;->f:Loiw;

    move-object v1, p4

    iput-object v1, v0, Lcul;->g:Lctv;

    move-object v1, p1

    iput-object v1, v0, Lcul;->b:Loiw;

    move-object v1, p2

    iput-object v1, v0, Lcul;->p:Liac;

    move-object v1, p3

    iput-object v1, v0, Lcul;->c:Lmqp;

    move-object v1, p10

    iput-object v1, v0, Lcul;->h:Lfbk;

    move-object v1, p11

    iput-object v1, v0, Lcul;->s:Lcvr;

    move-object v1, p12

    iput-object v1, v0, Lcul;->t:Lcvm;

    move-object v1, p13

    iput-object v1, v0, Lcul;->i:Ljxv;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcul;->q:Ldja;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcul;->j:Ldhi;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcul;->u:Ldne;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcul;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcul;->n:Z

    iget-object v1, p0, Lcul;->m:Ljye;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljye;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcul;->m:Ljye;

    :cond_0
    iget-object v1, p0, Lcul;->l:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcul;->l:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljzd;

    invoke-interface {v1}, Ljzd;->e()V

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, p0, Lcul;->l:Lmqp;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
