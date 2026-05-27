.class Lcom/agc/widget/recyclerview/DiffUtil$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/agc/widget/recyclerview/DiffUtil$Range;->oldListStart:I

    iput p2, p0, Lcom/agc/widget/recyclerview/DiffUtil$Range;->oldListEnd:I

    iput p3, p0, Lcom/agc/widget/recyclerview/DiffUtil$Range;->newListStart:I

    iput p4, p0, Lcom/agc/widget/recyclerview/DiffUtil$Range;->newListEnd:I

    return-void
.end method


# virtual methods
.method public newSize()I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$Range;->newListEnd:I

    iget v1, p0, Lcom/agc/widget/recyclerview/DiffUtil$Range;->newListStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public oldSize()I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$Range;->oldListEnd:I

    iget v1, p0, Lcom/agc/widget/recyclerview/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v0, v1

    return v0
.end method
