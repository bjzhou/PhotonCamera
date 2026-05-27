.class public Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/StableIdStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/StableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsolatedStableIdStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;
    }
.end annotation


# instance fields
.field mNextStableId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    return-void
.end method


# virtual methods
.method public createStableIdLookup()Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;-><init>(Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;)V

    return-object v0
.end method

.method public obtainId()J
    .locals 4

    iget-wide v0, p0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    return-wide v0
.end method
