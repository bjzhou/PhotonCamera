.class public final Lafu;
.super Lolm;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.core.view.ViewGroupKt$descendants$1"
    c = "ViewGroup.kt"
    d = "invokeSuspend"
    e = {
        0x77,
        0x79
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field e:I

.field final synthetic f:Landroid/view/ViewGroup;

.field private synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Loku;)V
    .locals 0

    iput-object p1, p0, Lafu;->f:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lolm;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Looe;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lafu;

    invoke-virtual {p1, p2}, Lafu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lafu;->e:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lafu;->d:I

    iget v3, p0, Lafu;->c:I

    iget-object v4, p0, Lafu;->a:Ljava/lang/Object;

    iget-object v5, p0, Lafu;->g:Ljava/lang/Object;

    check-cast v5, Looe;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lafu;->d:I

    iget v3, p0, Lafu;->c:I

    iget-object v4, p0, Lafu;->b:Ljava/lang/Object;

    iget-object v5, p0, Lafu;->a:Ljava/lang/Object;

    iget-object v6, p0, Lafu;->g:Ljava/lang/Object;

    check-cast v6, Looe;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_2

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lafu;->g:Ljava/lang/Object;

    check-cast p1, Looe;

    iget-object v1, p0, Lafu;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v6, p1

    move-object v5, v1

    move v1, v3

    const/4 v3, 0x0

    move-object p1, p0

    goto :goto_1

    :goto_0
    add-int/2addr v3, v2

    move-object v6, v5

    move-object v5, v4

    :goto_1
    if-ge v3, v1, :cond_3

    move-object v4, v5

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, p1, Lafu;->g:Ljava/lang/Object;

    iput-object v5, p1, Lafu;->a:Ljava/lang/Object;

    iput-object v4, p1, Lafu;->b:Ljava/lang/Object;

    iput v3, p1, Lafu;->c:I

    iput v1, p1, Lafu;->d:I

    iput v2, p1, Lafu;->e:I

    invoke-virtual {v6, v4, p1}, Looe;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v0, :cond_2

    :goto_2
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Labj;->f(Landroid/view/ViewGroup;)Looc;

    move-result-object v4

    iput-object v6, p1, Lafu;->g:Ljava/lang/Object;

    iput-object v5, p1, Lafu;->a:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, p1, Lafu;->b:Ljava/lang/Object;

    iput v3, p1, Lafu;->c:I

    iput v1, p1, Lafu;->d:I

    const/4 v7, 0x2

    iput v7, p1, Lafu;->e:I

    invoke-virtual {v6, v4, p1}, Looe;->c(Looc;Loku;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_0

    goto :goto_3

    :cond_0
    return-object v0

    :cond_1
    :goto_3
    move-object v4, v5

    move-object v5, v6

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 2

    new-instance v0, Lafu;

    iget-object v1, p0, Lafu;->f:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Lafu;-><init>(Landroid/view/ViewGroup;Loku;)V

    iput-object p1, v0, Lafu;->g:Ljava/lang/Object;

    return-object v0
.end method
