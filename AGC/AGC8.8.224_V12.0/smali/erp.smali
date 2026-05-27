.class final Lerp;
.super Ljava/lang/Object;

# interfaces
.implements Liel;


# instance fields
.field final synthetic a:Lert;


# direct methods
.method public constructor <init>(Lert;)V
    .locals 0

    iput-object p1, p0, Lerp;->a:Lert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lerp;->a:Lert;

    iget-object v0, v0, Lert;->f:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v1, Lhju;->o:Lhju;

    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    invoke-virtual {v0, v1, v2}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lerp;->a:Lert;

    iget-object v1, v0, Lert;->f:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v2, Lhju;->o:Lhju;

    invoke-virtual {v1, v2}, Lhkh;->k(Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lhju;->p:Lhju;

    invoke-virtual {v1, v2}, Lhkh;->k(Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lhju;->p:Lhju;

    sget-object v3, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    invoke-virtual {v1, v2, v3}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    iget-object v2, v1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->h:Lkbf;

    invoke-interface {v2}, Lkbf;->a()V

    sget-object v2, Lkbf;->b:Lkbf;

    iput-object v2, v1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->h:Lkbf;

    iget-object v0, v0, Lert;->R:Lnph;

    sget-object v1, Lcka;->a:Lcka;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
