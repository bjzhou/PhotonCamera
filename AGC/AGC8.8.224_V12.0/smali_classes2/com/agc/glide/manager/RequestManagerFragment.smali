.class public Lcom/agc/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestManager()Lcom/agc/glide/RequestManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/agc/glide/manager/RequestManagerTreeNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/agc/glide/manager/RequestManagerFragment$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/manager/RequestManagerFragment$1;-><init>(Lcom/agc/glide/manager/RequestManagerFragment;)V

    return-object v0
.end method

.method public setRequestManager(Lcom/agc/glide/RequestManager;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
