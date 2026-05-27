.class public final Llfm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private b:I

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Llfm;->c:I

    iput-object p1, p0, Llfm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llfn;I)V
    .locals 0

    iput p2, p0, Llfm;->c:I

    iput-object p1, p0, Llfm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Llfm;->b:I

    return-void
.end method

.method public constructor <init>(Lncg;I)V
    .locals 0

    iput p2, p0, Llfm;->c:I

    iput-object p1, p0, Llfm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Llfm;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Llfm;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Llfm;->b:I

    iget-object v3, p0, Llfm;->a:Ljava/lang/Object;

    check-cast v3, Lncg;

    iget-object v3, v3, Lncg;->a:Lnci;

    iget v3, v3, Lnci;->b:I

    if-ge v0, v3, :cond_2

    return v1

    :pswitch_0
    iget v0, p0, Llfm;->b:I

    iget-object v3, p0, Llfm;->a:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    iget v0, p0, Llfm;->b:I

    iget-object v3, p0, Llfm;->a:Ljava/lang/Object;

    check-cast v3, Llfn;

    iget-object v3, v3, Llfn;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Llfm;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llfm;->a:Ljava/lang/Object;

    check-cast v0, Lncg;

    iget-object v0, v0, Lncg;->a:Lnci;

    iget-object v1, v0, Lnci;->a:[I

    iget v2, p0, Llfm;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Llfm;->b:I

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v1}, Lnci;->d(I)Lnbc;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Llfm;->a:Ljava/lang/Object;

    iget v1, p0, Llfm;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Llfm;->b:I

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Llfm;->a:Ljava/lang/Object;

    check-cast v0, Llfn;

    iget-object v0, v0, Llfn;->a:[I

    iget v1, p0, Llfm;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Llfm;->b:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Llfm;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Llfm;->a:Ljava/lang/Object;

    iget v1, p0, Llfm;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Llfm;->b:I

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IntSets are immutable!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
