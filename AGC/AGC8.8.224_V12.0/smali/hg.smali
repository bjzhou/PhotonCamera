.class public final Lhg;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic b(Landroid/util/Size;I)Lbkb;
    .locals 1

    new-instance v0, Lrv;

    invoke-direct {v0, p0, p1}, Lrv;-><init>(Landroid/util/Size;I)V

    new-instance p0, Lbkb;

    invoke-static {v0}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lbkb;-><init>(Ljava/util/List;)V

    return-object p0
.end method
