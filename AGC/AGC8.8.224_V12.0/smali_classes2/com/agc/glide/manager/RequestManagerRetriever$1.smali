.class Lcom/agc/glide/manager/RequestManagerRetriever$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/manager/RequestManagerRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/Glide;Lcom/agc/glide/manager/Lifecycle;Lcom/agc/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/agc/glide/RequestManager;
    .locals 1

    new-instance v0, Lcom/agc/glide/RequestManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/agc/glide/RequestManager;-><init>(Lcom/agc/glide/Glide;Lcom/agc/glide/manager/Lifecycle;Lcom/agc/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-object v0
.end method
