.class Landroidx/recyclerview/widget/DiffUtil$Diagonal;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Diagonal"
.end annotation


# instance fields
.field public final size:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 483
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 484
    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    return-void
.end method


# virtual methods
.method endX()I
    .locals 1

    .line 488
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v0, p0

    return v0
.end method

.method endY()I
    .locals 1

    .line 492
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v0, p0

    return v0
.end method
