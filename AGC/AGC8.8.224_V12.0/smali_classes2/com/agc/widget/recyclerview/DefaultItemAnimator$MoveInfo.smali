.class Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iput p2, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method
