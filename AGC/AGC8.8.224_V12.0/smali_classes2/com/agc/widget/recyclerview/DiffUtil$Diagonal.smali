.class Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Diagonal"
.end annotation


# instance fields
.field public final size:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->x:I

    iput p2, p0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->y:I

    iput p3, p0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->size:I

    return-void
.end method


# virtual methods
.method public endX()I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->x:I

    iget v1, p0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->size:I

    add-int/2addr v0, v1

    return v0
.end method

.method public endY()I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->y:I

    iget v1, p0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->size:I

    add-int/2addr v0, v1

    return v0
.end method
