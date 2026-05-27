.class Lcom/agc/widget/recyclerview/ListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ListAdapter$1;->this$0:Lcom/agc/widget/recyclerview/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ListAdapter$1;->this$0:Lcom/agc/widget/recyclerview/ListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/ListAdapter;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
