.class public final synthetic Ligt;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field public final synthetic a:Ligx;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/SurfaceView;


# direct methods
.method public synthetic constructor <init>(Ligx;IILandroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligt;->a:Ligx;

    iput p2, p0, Ligt;->b:I

    iput p3, p0, Ligt;->c:I

    iput-object p4, p0, Ligt;->d:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v1, p0, Ligt;->a:Ligx;

    iget v3, p0, Ligt;->b:I

    iget v4, p0, Ligt;->c:I

    iget-object v2, p0, Ligt;->d:Landroid/view/SurfaceView;

    check-cast p1, Liot;

    invoke-interface {p1, v3, v4}, Liot;->d(II)Lmqp;

    move-result-object p1

    new-instance v6, Ligu;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ligu;-><init>(Ligx;Landroid/view/SurfaceView;III)V

    invoke-virtual {p1, v6}, Lmqp;->d(Lmrl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method
