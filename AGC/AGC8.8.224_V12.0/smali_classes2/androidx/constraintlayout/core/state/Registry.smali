.class public Landroidx/constraintlayout/core/state/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# static fields
.field private static final sRegistry:Landroidx/constraintlayout/core/state/Registry;


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/state/RegistryCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroidx/constraintlayout/core/state/Registry;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Registry;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Landroidx/constraintlayout/core/state/Registry;
    .locals 1

    .line 26
    sget-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    return-object v0
.end method


# virtual methods
.method public currentContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0}, Landroidx/constraintlayout/core/state/RegistryCallback;->currentMotionScene()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public currentLayoutInformation(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0}, Landroidx/constraintlayout/core/state/RegistryCallback;->currentLayoutInformation()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastModified(Ljava/lang/String;)J
    .locals 0

    .line 88
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0}, Landroidx/constraintlayout/core/state/RegistryCallback;->getLastModified()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public getLayoutList()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public register(Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;)V
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDrawDebug(Ljava/lang/String;I)V
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->setDrawDebug(I)V

    :cond_0
    return-void
.end method

.method public setLayoutInformationMode(Ljava/lang/String;I)V
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->setLayoutInformationMode(I)V

    :cond_0
    return-void
.end method

.method public unregister(Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;)V
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->onNewMotionScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDimensions(Ljava/lang/String;II)V
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0, p2, p3}, Landroidx/constraintlayout/core/state/RegistryCallback;->onDimensions(II)V

    :cond_0
    return-void
.end method

.method public updateProgress(Ljava/lang/String;F)V
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_0

    .line 49
    invoke-interface {p0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->onProgress(F)V

    :cond_0
    return-void
.end method
