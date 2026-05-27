.class final Lhku;
.super Landroid/util/LruCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x1400000

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lgxy;

    check-cast p3, Llpu;

    check-cast p4, Llpu;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p3, Lhkv;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->c()Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const/16 p4, 0xe82

    invoke-interface {p3, p4}, Lnah;->G(I)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const-string p4, "Thumbnail holder removed: key=%s evicted=%b"

    invoke-interface {p3, p4, p2, p1}, Lnah;->A(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected final bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lgxy;

    check-cast p2, Llpu;

    iget-object p1, p2, Llpu;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
