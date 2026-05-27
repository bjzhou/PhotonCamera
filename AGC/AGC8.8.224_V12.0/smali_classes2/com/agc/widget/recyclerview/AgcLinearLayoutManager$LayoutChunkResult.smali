.class public Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetInternal()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method
