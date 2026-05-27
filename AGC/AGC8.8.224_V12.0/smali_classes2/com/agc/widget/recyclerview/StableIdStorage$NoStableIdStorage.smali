.class public Lcom/agc/widget/recyclerview/StableIdStorage$NoStableIdStorage;
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
    name = "NoStableIdStorage"
.end annotation


# instance fields
.field private final mNoIdLookup:Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/widget/recyclerview/StableIdStorage$NoStableIdStorage$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/StableIdStorage$NoStableIdStorage$1;-><init>(Lcom/agc/widget/recyclerview/StableIdStorage$NoStableIdStorage;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;

    return-void
.end method


# virtual methods
.method public createStableIdLookup()Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;

    return-object v0
.end method
