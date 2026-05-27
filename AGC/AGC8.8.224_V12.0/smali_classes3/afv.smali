.class public final Lafv;
.super Lolm;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.core.view.ViewKt$allViews$1"
    c = "View.kt"
    d = "invokeSuspend"
    e = {
        0x19e,
        0x1a0
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/view/View;

.field private synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Loku;)V
    .locals 0

    iput-object p1, p0, Lafv;->b:Landroid/view/View;

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

    check-cast p1, Lafv;

    invoke-virtual {p1, p2}, Lafv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lafv;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lafv;->c:Ljava/lang/Object;

    check-cast v1, Looe;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lafv;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Looe;

    iget-object p1, p0, Lafv;->b:Landroid/view/View;

    iput-object v1, p0, Lafv;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p0, Lafv;->a:I

    invoke-virtual {v1, p1, p0}, Looe;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_0

    :goto_0
    iget-object p1, p0, Lafv;->b:Landroid/view/View;

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Labj;->f(Landroid/view/ViewGroup;)Looc;

    move-result-object p1

    const/4 v2, 0x0

    iput-object v2, p0, Lafv;->c:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p0, Lafv;->a:I

    invoke-virtual {v1, p1, p0}, Looe;->c(Looc;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
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

    new-instance v0, Lafv;

    iget-object v1, p0, Lafv;->b:Landroid/view/View;

    invoke-direct {v0, v1, p2}, Lafv;-><init>(Landroid/view/View;Loku;)V

    iput-object p1, v0, Lafv;->c:Ljava/lang/Object;

    return-object v0
.end method
