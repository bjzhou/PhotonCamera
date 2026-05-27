.class public final Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;->a:Z

    iput-boolean p2, p0, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;->b:Z

    return-void
.end method


# virtual methods
.method public final getBurnInProtectionRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;->a:Z

    return v0
.end method

.method public final getDeviceHasLowBitAmbient()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;->b:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientDetails - burnInProtectionRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceHasLowBitAmbient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
