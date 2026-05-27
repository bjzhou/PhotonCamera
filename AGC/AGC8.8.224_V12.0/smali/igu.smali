.class public final synthetic Ligu;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Ligx;

.field public final synthetic b:Landroid/view/SurfaceView;

.field public final synthetic c:I

.field public final synthetic d:I

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ligx;Landroid/view/SurfaceView;III)V
    .locals 0

    iput p5, p0, Ligu;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligu;->a:Ligx;

    iput-object p2, p0, Ligu;->b:Landroid/view/SurfaceView;

    iput p3, p0, Ligu;->c:I

    iput p4, p0, Ligu;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ligu;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ligu;->a:Ligx;

    iget-object v1, p0, Ligu;->b:Landroid/view/SurfaceView;

    iget v2, p0, Ligu;->c:I

    iget v3, p0, Ligu;->d:I

    iget-object v0, v0, Ligx;->g:Limc;

    invoke-static {v1, v2, v3, v0}, Ligx;->b(Landroid/view/SurfaceView;IILimc;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ligu;->a:Ligx;

    iget-object v1, p0, Ligu;->b:Landroid/view/SurfaceView;

    iget v2, p0, Ligu;->c:I

    iget v3, p0, Ligu;->d:I

    iget-object v0, v0, Ligx;->g:Limc;

    invoke-static {v1, v2, v3, v0}, Ligx;->b(Landroid/view/SurfaceView;IILimc;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
