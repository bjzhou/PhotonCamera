.class public final Lhqe;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/Queue;

.field public final e:Ljava/util/Queue;

.field public final f:Ljpw;

.field public g:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field public h:Ldqx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/stabilization/EisProcessExecutor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhqe;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljpw;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lhqe;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lhqe;->d:Ljava/util/Queue;

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lhqe;->e:Ljava/util/Queue;

    iput-object p1, p0, Lhqe;->f:Ljpw;

    const-string p1, "Cheetah-eis-executor"

    invoke-static {p1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lhqe;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
