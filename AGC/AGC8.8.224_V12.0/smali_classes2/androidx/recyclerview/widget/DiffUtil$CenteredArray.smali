.class Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CenteredArray"
.end annotation


# instance fields
.field private final mData:[I

.field private final mMid:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    .line 1039
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    return-void
.end method


# virtual methods
.method backingData()[I
    .locals 0

    .line 1047
    iget-object p0, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    return-object p0
.end method

.method public fill(I)V
    .locals 0

    .line 1055
    iget-object p0, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method get(I)I
    .locals 1

    .line 1043
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr p1, p0

    aget p0, v0, p1

    return p0
.end method

.method set(II)V
    .locals 1

    .line 1051
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr p1, p0

    aput p2, v0, p1

    return-void
.end method
