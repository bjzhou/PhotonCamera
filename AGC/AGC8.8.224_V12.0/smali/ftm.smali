.class public final Lftm;
.super Ljwh;


# direct methods
.method public constructor <init>(Ljvk;Ljvs;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p1

    invoke-direct {p0, p1}, Ljwh;-><init>(Ljvs;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuc;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgdj;

    iget-object p1, p1, Lgdj;->a:Landroid/graphics/Rect;

    invoke-interface {v0, p1}, Lfuc;->a(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method
