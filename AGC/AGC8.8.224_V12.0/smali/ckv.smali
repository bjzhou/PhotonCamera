.class public final Lckv;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljvk;

.field public final c:Ljwb;

.field public final d:Lcln;

.field public final e:Loiw;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lken;

.field public final h:Ljvs;

.field public final i:Lnsc;

.field public final j:Logd;

.field public final k:Lkfj;

.field public final l:Lkbc;

.field public m:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

.field public n:Lkef;

.field public o:Lkad;

.field public p:Z

.field public final q:Lmrd;

.field public final r:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/autotimer/AutoTimerAnalysis"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lckv;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljvk;Ljwb;Lcvr;Lcln;Loiw;Ljava/util/concurrent/Executor;Lken;Ljvs;Lnsc;Lmrd;Logd;Lkbc;Lkfj;[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lckv;->m:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    iput-object v1, v0, Lckv;->n:Lkef;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lckv;->p:Z

    move-object v1, p1

    iput-object v1, v0, Lckv;->b:Ljvk;

    move-object v1, p2

    iput-object v1, v0, Lckv;->c:Ljwb;

    move-object v1, p3

    iput-object v1, v0, Lckv;->r:Lcvr;

    move-object v1, p4

    iput-object v1, v0, Lckv;->d:Lcln;

    move-object v1, p5

    iput-object v1, v0, Lckv;->e:Loiw;

    invoke-static {p6}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Lckv;->f:Ljava/util/concurrent/Executor;

    move-object v1, p7

    iput-object v1, v0, Lckv;->g:Lken;

    move-object v1, p8

    iput-object v1, v0, Lckv;->h:Ljvs;

    move-object v1, p9

    iput-object v1, v0, Lckv;->i:Lnsc;

    move-object v1, p10

    iput-object v1, v0, Lckv;->q:Lmrd;

    move-object v1, p11

    iput-object v1, v0, Lckv;->j:Logd;

    move-object v1, p13

    iput-object v1, v0, Lckv;->k:Lkfj;

    move-object v1, p12

    iput-object v1, v0, Lckv;->l:Lkbc;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lckv;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcdw;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lcdw;-><init>(Lckv;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
