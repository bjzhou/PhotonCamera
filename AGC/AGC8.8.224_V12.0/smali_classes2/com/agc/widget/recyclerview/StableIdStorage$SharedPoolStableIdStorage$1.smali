.class Lcom/agc/widget/recyclerview/StableIdStorage$SharedPoolStableIdStorage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/StableIdStorage$SharedPoolStableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/StableIdStorage$SharedPoolStableIdStorage;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/StableIdStorage$SharedPoolStableIdStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StableIdStorage$SharedPoolStableIdStorage$1;->this$0:Lcom/agc/widget/recyclerview/StableIdStorage$SharedPoolStableIdStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localToGlobal(J)J
    .locals 0

    return-wide p1
.end method
