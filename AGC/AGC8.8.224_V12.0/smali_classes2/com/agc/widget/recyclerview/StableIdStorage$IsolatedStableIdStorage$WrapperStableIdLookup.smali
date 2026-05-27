.class Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapperStableIdLookup"
.end annotation


# instance fields
.field private final mLocalToGlobalLookup:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->this$0:Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Landroidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public localToGlobal(J)J
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->this$0:Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;->obtainId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method
