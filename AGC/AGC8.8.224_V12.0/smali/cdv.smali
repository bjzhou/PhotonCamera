.class public final Lcdv;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private final b:Lcdp;


# direct methods
.method public constructor <init>(Lcdp;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdv;->b:Lcdp;

    iput-object p2, p0, Lcdv;->a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 3

    iget-object v0, p0, Lcdv;->a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v1, Lhju;->c:Lhju;

    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lhkg;

    invoke-virtual {v0, v1, v2}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    iget-object v0, p0, Lcdv;->b:Lcdp;

    invoke-interface {v0}, Lcdp;->a()Lnou;

    move-result-object v0

    new-instance v1, Lcdu;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcdu;-><init>(Lcdv;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
