.class Lcom/agc/glide/manager/RequestManagerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/manager/RequestManagerTreeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/manager/RequestManagerFragment;->getRequestManagerTreeNode()Lcom/agc/glide/manager/RequestManagerTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>(Lcom/agc/glide/manager/RequestManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/manager/RequestManagerFragment$1;->this$0:Lcom/agc/glide/manager/RequestManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescendants()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/agc/glide/RequestManager;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
