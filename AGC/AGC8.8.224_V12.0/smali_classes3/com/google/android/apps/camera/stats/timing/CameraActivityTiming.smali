.class public Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;
.super Lhkh;


# static fields
.field public static final a:Lhkg;

.field public static final b:Lhkg;


# instance fields
.field public c:Z

.field public final d:Lhjo;

.field public final e:Lkbc;

.field public f:Lkbf;

.field public g:Lkbf;

.field public h:Lkbf;

.field public i:Lkbf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lhkg;->a()Lhkf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhkf;->b(Z)V

    invoke-virtual {v0}, Lhkf;->a()Lhkg;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    sget-object v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->j:Lhkg;

    sput-object v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lhkg;

    return-void
.end method

.method public constructor <init>(JLkrh;Lhjo;Lkbc;)V
    .locals 1

    invoke-static {}, Lhju;->values()[Lhju;

    move-result-object v0

    invoke-direct {p0, p3, p1, p2, v0}, Lhkh;-><init>(Lkrh;J[Ljava/lang/Enum;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c:Z

    sget-object p1, Lkbf;->b:Lkbf;

    iput-object p1, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->i:Lkbf;

    iput-object p4, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d:Lhjo;

    iput-object p5, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->e:Lkbc;

    const-string p1, "FirstPreviewFrame"

    invoke-interface {p5, p1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->f:Lkbf;

    const-string p1, "ShutterButtonEnabled"

    invoke-interface {p5, p1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->h:Lkbf;

    const-string p1, "FirstFrameReceived"

    invoke-interface {p5, p1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->g:Lkbf;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-super {p0}, Lhkh;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c:Z

    return-void
.end method

.method public final d()Z
    .locals 6

    invoke-static {}, Lhju;->values()[Lhju;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-boolean v5, v4, Lhju;->t:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lhkh;->k(Ljava/lang/Enum;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getActivityInitializedNs()J
    .locals 2

    sget-object v0, Lhju;->k:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityOnCreateEndNs()J
    .locals 2

    sget-object v0, Lhju;->b:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityOnCreateStartNs()J
    .locals 2

    sget-object v0, Lhju;->a:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityOnResumeEndNs()J
    .locals 2

    sget-object v0, Lhju;->i:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityOnResumeStartNs()J
    .locals 2

    sget-object v0, Lhju;->h:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityOnStartStartNs()J
    .locals 2

    sget-object v0, Lhju;->g:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstPreviewFrameReceivedNs()J
    .locals 2

    sget-object v0, Lhju;->l:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstPreviewFrameRenderedNs()J
    .locals 2

    sget-object v0, Lhju;->m:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstVfePreviewFrameRenderedNs()J
    .locals 2

    sget-object v0, Lhju;->n:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPermissionStartupTaskTimeEndNs()J
    .locals 2

    sget-object v0, Lhju;->d:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPermissionStartupTaskTimeStartNs()J
    .locals 2

    sget-object v0, Lhju;->c:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShutterButtonFirstDrawnNs()J
    .locals 2

    sget-object v0, Lhju;->o:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShutterButtonFirstEnabledNs()J
    .locals 2

    sget-object v0, Lhju;->p:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWaitForCameraDevicesTaskTimeEndNs()J
    .locals 2

    sget-object v0, Lhju;->f:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWaitForCameraDevicesTaskTimeStartNs()J
    .locals 2

    sget-object v0, Lhju;->e:Lhju;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public recordActivityOnCreateStart(J)V
    .locals 2

    sget-object v0, Lhju;->a:Lhju;

    sget-object v1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    invoke-virtual {p0, v0, p1, p2, v1}, Lhkh;->j(Ljava/lang/Enum;JLhkg;)V

    return-void
.end method
