.class public final Lno;
.super Ldw;


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldw;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lno;->b:I

    const v0, 0x800013

    iput v0, p0, Lno;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lno;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Ldw;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Lno;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Ldw;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lno;->b:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lno;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lno;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lno;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lno;->bottomMargin:I

    return-void
.end method

.method public constructor <init>(Ldw;)V
    .locals 0

    invoke-direct {p0, p1}, Ldw;-><init>(Ldw;)V

    const/4 p1, 0x0

    iput p1, p0, Lno;->b:I

    return-void
.end method

.method public constructor <init>(Lno;)V
    .locals 1

    invoke-direct {p0, p1}, Ldw;-><init>(Ldw;)V

    const/4 v0, 0x0

    iput v0, p0, Lno;->b:I

    iget p1, p1, Lno;->b:I

    iput p1, p0, Lno;->b:I

    return-void
.end method
