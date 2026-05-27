.class public final Lmfp;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field private final c:Landroid/view/View;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmfp;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lmfp;->c:Landroid/view/View;

    iget v1, p0, Lmfp;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lmfp;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    sget-object v2, Lafq;->a:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lmfp;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lmfp;->d:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lmfp;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lmfp;->a:I

    iget-object v0, p0, Lmfp;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lmfp;->d:I

    return-void
.end method

.method public final c(I)Z
    .locals 1

    iget v0, p0, Lmfp;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmfp;->b:I

    invoke-virtual {p0}, Lmfp;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
