.class public final Lfux;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lnou;

.field public final c:Ljuh;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lgcg;

.field public final f:Lgvu;

.field public final g:Landroid/util/DisplayMetrics;

.field public final h:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field public final i:Lhkc;

.field public final j:Ljwb;

.field public final k:Lmqp;

.field public final l:Lika;

.field public final m:Ldbf;

.field public final n:Lmqp;

.field public final o:Lcgi;

.field public final p:Lfuj;

.field public final q:Ldhi;

.field public r:Lfuw;

.field public final s:Lklx;

.field public final t:Lgre;

.field public final u:Llpg;

.field public final v:Lgkr;

.field private final w:Lkbx;

.field private final x:Ljvs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/capture/CaptureOneCameraCreator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfux;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljuh;Lgre;Lgvu;Ljava/util/concurrent/Executor;Lgcg;Lklx;Landroid/util/DisplayMetrics;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lhkc;Ldbf;Lkbx;Lmqp;Ldhi;Lcgi;Ljwb;Lnou;Lfuj;Ljvs;Lgkr;Lmqp;Llpg;Lika;[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lfux;->c:Ljuh;

    move-object v1, p2

    iput-object v1, v0, Lfux;->t:Lgre;

    move-object v1, p4

    iput-object v1, v0, Lfux;->d:Ljava/util/concurrent/Executor;

    move-object v1, p5

    iput-object v1, v0, Lfux;->e:Lgcg;

    move-object v1, p3

    iput-object v1, v0, Lfux;->f:Lgvu;

    move-object v1, p6

    iput-object v1, v0, Lfux;->s:Lklx;

    move-object v1, p7

    iput-object v1, v0, Lfux;->g:Landroid/util/DisplayMetrics;

    move-object v1, p8

    iput-object v1, v0, Lfux;->h:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    move-object v1, p9

    iput-object v1, v0, Lfux;->i:Lhkc;

    move-object/from16 v1, p15

    iput-object v1, v0, Lfux;->j:Ljwb;

    move-object/from16 v1, p19

    iput-object v1, v0, Lfux;->v:Lgkr;

    move-object/from16 v1, p20

    iput-object v1, v0, Lfux;->k:Lmqp;

    move-object/from16 v1, p21

    iput-object v1, v0, Lfux;->u:Llpg;

    move-object/from16 v1, p22

    iput-object v1, v0, Lfux;->l:Lika;

    move-object v1, p10

    iput-object v1, v0, Lfux;->m:Ldbf;

    move-object v1, p11

    iput-object v1, v0, Lfux;->w:Lkbx;

    move-object v1, p12

    iput-object v1, v0, Lfux;->n:Lmqp;

    move-object/from16 v1, p14

    iput-object v1, v0, Lfux;->o:Lcgi;

    move-object/from16 v1, p16

    iput-object v1, v0, Lfux;->b:Lnou;

    move-object/from16 v1, p17

    iput-object v1, v0, Lfux;->p:Lfuj;

    move-object/from16 v1, p18

    iput-object v1, v0, Lfux;->x:Ljvs;

    move-object v1, p13

    iput-object v1, v0, Lfux;->q:Ldhi;

    return-void
.end method


# virtual methods
.method public final a(Lflg;)Lflq;
    .locals 5

    iget-object v0, p0, Lfux;->s:Lklx;

    iget-object v1, p1, Lflg;->a:Lkll;

    invoke-virtual {v0, v1}, Lklx;->f(Lkll;)Lfuz;

    iget-object v0, p0, Lfux;->x:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lflm;

    iget-object v2, p1, Lflg;->a:Lkll;

    iget-object v3, p1, Lflg;->d:Lihb;

    iget-object v3, v3, Lihb;->a:Lkaf;

    iget-object v4, p1, Lflg;->c:Lkaf;

    invoke-direct {v1, v2, v3, v4, v0}, Lflm;-><init>(Lkll;Lkaf;Lkaf;Z)V

    new-instance v0, Lflq;

    invoke-direct {v0, p1, v1}, Lflq;-><init>(Lflg;Lflm;)V

    return-object v0
.end method

.method public final b(Lflg;Lnou;)Lnou;
    .locals 0

    invoke-virtual {p0, p1}, Lfux;->a(Lflg;)Lflq;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lfux;->c(Lflq;Lnou;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lflq;Lnou;)Lnou;
    .locals 2

    iget-object v0, p0, Lfux;->w:Lkbx;

    iget-object v1, p1, Lflq;->a:Lflg;

    iget-object v1, v1, Lflg;->a:Lkll;

    invoke-interface {v0, v1}, Lkbx;->d(Lkll;)V

    new-instance v0, Lfuu;

    invoke-direct {v0, p0, p1, p2}, Lfuu;-><init>(Lfux;Lflq;Lnou;)V

    iget-object p1, p0, Lfux;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lfux;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lfof;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lfof;-><init>(Lfux;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lfux;->r:Lfuw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lfuw;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfux;->r:Lfuw;

    return-void
.end method
