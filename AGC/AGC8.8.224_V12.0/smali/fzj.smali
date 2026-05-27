.class public final Lfzj;
.super Lkfg;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljwb;

.field public final c:Lklj;

.field public final d:Lkli;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/metadata/dynamicsensororientation/DynamicSensorOrientationListener"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfzj;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljwb;Lklj;Lkli;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p1, p0, Lfzj;->b:Ljwb;

    iput-object p2, p0, Lfzj;->c:Lklj;

    iput-object p3, p0, Lfzj;->d:Lkli;

    iput-object p4, p0, Lfzj;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 3

    iget-object v0, p0, Lfzj;->d:Lkli;

    invoke-interface {v0}, Lkli;->M()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lfzj;->d:Lkli;

    invoke-interface {p1}, Lkli;->f()I

    move-result p1

    iget-object v0, p0, Lfzj;->b:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lfzj;->b:Ljwb;

    iget-object v0, p0, Lfzj;->d:Lkli;

    invoke-interface {v0}, Lkli;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lfzj;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lfqt;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, Lfqt;-><init>(Lfzj;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
