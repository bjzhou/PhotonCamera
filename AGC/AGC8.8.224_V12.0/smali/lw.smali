.class final Llw;
.super Ljava/lang/Object;

# interfaces
.implements Lnu;


# instance fields
.field final synthetic a:Lly;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lly;I)V
    .locals 0

    iput p2, p0, Llw;->b:I

    iput-object p1, p0, Llw;->a:Lly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Llw;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    invoke-static {p1}, Lly;->bq(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Llz;->rightMargin:I

    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    invoke-static {p1}, Lly;->bo(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Llz;->bottomMargin:I

    add-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Llw;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    invoke-static {p1}, Lly;->bp(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Llz;->leftMargin:I

    sub-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    invoke-static {p1}, Lly;->br(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Llz;->topMargin:I

    sub-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Llw;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llw;->a:Lly;

    iget v1, v0, Lly;->A:I

    invoke-virtual {v0}, Lly;->ar()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Llw;->a:Lly;

    iget v1, v0, Lly;->B:I

    invoke-virtual {v0}, Lly;->ap()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Llw;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llw;->a:Lly;

    invoke-virtual {v0}, Lly;->aq()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Llw;->a:Lly;

    invoke-virtual {v0}, Lly;->as()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)Landroid/view/View;
    .locals 1

    iget v0, p0, Llw;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llw;->a:Lly;

    invoke-virtual {v0, p1}, Lly;->av(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Llw;->a:Lly;

    invoke-virtual {v0, p1}, Lly;->av(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
