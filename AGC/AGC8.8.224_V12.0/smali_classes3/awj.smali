.class public final Lawj;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$2"
    c = "WindowInfoTrackerImpl.kt"
    d = "invokeSuspend"
    e = {
        0x3d
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lawk;

.field final synthetic c:Landroid/app/Activity;

.field private synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lawk;Landroid/app/Activity;Loku;)V
    .locals 0

    iput-object p1, p0, Lawj;->b:Lawk;

    iput-object p2, p0, Lawj;->c:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lotd;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lawj;

    invoke-virtual {p1, p2}, Lawj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lawj;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lawj;->d:Ljava/lang/Object;

    check-cast p1, Lotd;

    new-instance v1, Lbx;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lbx;-><init>(Lotd;I)V

    iget-object v2, p0, Lawj;->b:Lawk;

    iget-object v2, v2, Lawk;->a:Lawo;

    iget-object v3, p0, Lawj;->c:Landroid/app/Activity;

    sget-object v4, Lqj;->b:Lqj;

    invoke-interface {v2, v3, v4, v1}, Lawo;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Laea;)V

    new-instance v2, Lawi;

    iget-object v3, p0, Lawj;->b:Lawk;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lawi;-><init>(Lawk;Laea;I)V

    const/4 v1, 0x1

    iput v1, p0, Lawj;->a:I

    invoke-static {p1, v2, p0}, Lolp;->L(Lotd;Lolz;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 3

    new-instance v0, Lawj;

    iget-object v1, p0, Lawj;->b:Lawk;

    iget-object v2, p0, Lawj;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Lawj;-><init>(Lawk;Landroid/app/Activity;Loku;)V

    iput-object p1, v0, Lawj;->d:Ljava/lang/Object;

    return-object v0
.end method
