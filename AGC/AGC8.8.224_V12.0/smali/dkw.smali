.class public final synthetic Ldkw;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field public final synthetic a:Lnou;

.field public final synthetic b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field public final synthetic c:Ldhi;

.field public final synthetic d:Lmqp;

.field public final synthetic e:Lbkc;


# direct methods
.method public synthetic constructor <init>(Lnou;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Ldhi;Lbkc;Lmqp;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkw;->a:Lnou;

    iput-object p2, p0, Ldkw;->b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    iput-object p3, p0, Ldkw;->c:Ldhi;

    iput-object p4, p0, Ldkw;->e:Lbkc;

    iput-object p5, p0, Ldkw;->d:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Ldkw;->a:Lnou;

    iget-object v2, p0, Ldkw;->b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    iget-object v3, p0, Ldkw;->c:Ldhi;

    iget-object v4, p0, Ldkw;->e:Lbkc;

    iget-object v5, p0, Ldkw;->d:Lmqp;

    new-instance v10, Lapv;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lapv;-><init>(Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Ldhi;Lbkc;Lmqp;I[B[B[B)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v10, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
