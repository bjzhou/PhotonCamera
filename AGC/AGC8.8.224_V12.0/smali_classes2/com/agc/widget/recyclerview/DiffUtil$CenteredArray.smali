.class Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CenteredArray"
.end annotation


# instance fields
.field private final mData:[I

.field private final mMid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;->mData:[I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;->mMid:I

    return-void
.end method


# virtual methods
.method public backingData()[I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;->mData:[I

    return-object v0
.end method

.method public fill(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;->mData:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public get(I)I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;->mData:[I

    iget v1, p0, Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public set(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;->mData:[I

    iget v1, p0, Lcom/agc/widget/recyclerview/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr p1, v1

    aput p2, v0, p1

    return-void
.end method
