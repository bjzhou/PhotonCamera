.class Lcom/agc/widget/recyclerview/GapWorker$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public distanceToItem:I

.field public immediate:Z

.field public position:I

.field public view:Lcom/agc/widget/recyclerview/AgcRecyclerView;

.field public viewVelocity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/GapWorker$Task;->immediate:Z

    iput v0, p0, Lcom/agc/widget/recyclerview/GapWorker$Task;->viewVelocity:I

    iput v0, p0, Lcom/agc/widget/recyclerview/GapWorker$Task;->distanceToItem:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/agc/widget/recyclerview/GapWorker$Task;->view:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iput v0, p0, Lcom/agc/widget/recyclerview/GapWorker$Task;->position:I

    return-void
.end method
