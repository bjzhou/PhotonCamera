.class public final Lcdo;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final a:Ldbz;

.field public final b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field public final c:Ldns;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lcvr;

.field private final f:Lcdn;


# direct methods
.method public constructor <init>(Lcdn;Ldbz;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lcvr;Ldns;Ljava/util/concurrent/Executor;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdo;->f:Lcdn;

    iput-object p2, p0, Lcdo;->a:Ldbz;

    iput-object p3, p0, Lcdo;->b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    iput-object p4, p0, Lcdo;->e:Lcvr;

    iput-object p5, p0, Lcdo;->c:Ldns;

    iput-object p6, p0, Lcdo;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Ldmy;)Lkbo;
    .locals 0

    iget-object p0, p0, Ldmy;->b:Lkbo;

    if-nez p0, :cond_0

    sget-object p0, Lkbo;->m:Lkbo;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 4

    iget-object v0, p0, Lcdo;->b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v1, Lhju;->e:Lhju;

    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lhkg;

    invoke-virtual {v0, v1, v2}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    iget-object v1, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->e:Lkbc;

    const-string v2, "waitForCameraDevice"

    invoke-interface {v1, v2}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->i:Lkbf;

    iget-object v0, p0, Lcdo;->f:Lcdn;

    invoke-virtual {v0}, Lcdn;->a()Lnou;

    move-result-object v0

    new-instance v1, Lcdu;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcdu;-><init>(Lcdo;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Letf;->b:Letf;

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2, v3}, Lnml;->j(Lnou;Ljava/lang/Class;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
