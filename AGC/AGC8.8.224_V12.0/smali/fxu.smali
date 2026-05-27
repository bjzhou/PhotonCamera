.class final Lfxu;
.super Ljava/lang/Object;

# interfaces
.implements Lgqm;


# static fields
.field private static final a:Lkae;

.field private static final b:Lkae;

.field private static final c:Lkae;


# instance fields
.field private final d:Lgxl;

.field private final e:Lkab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkae;->b:Lkae;

    sput-object v0, Lfxu;->a:Lkae;

    const/16 v0, 0x19

    invoke-static {v0}, Lkae;->c(I)Lkae;

    move-result-object v0

    sput-object v0, Lfxu;->b:Lkae;

    const/16 v0, 0x5f

    invoke-static {v0}, Lkae;->c(I)Lkae;

    move-result-object v0

    sput-object v0, Lfxu;->c:Lkae;

    return-void
.end method

.method public constructor <init>(Lgxl;Lkab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxu;->d:Lgxl;

    iput-object p2, p0, Lfxu;->e:Lkab;

    return-void
.end method


# virtual methods
.method public final a(Lgqz;Lgxy;)V
    .locals 0

    return-void
.end method

.method public final b(Lgqz;)V
    .locals 1

    iget p1, p1, Lgqz;->c:I

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lfxu;->d:Lgxl;

    sget-object v0, Lfxu;->a:Lkae;

    invoke-interface {p1, v0}, Lgxl;->b(Lkae;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lgqz;Lgsa;)V
    .locals 0

    iget p1, p1, Lgqz;->c:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lfxu;->d:Lgxl;

    sget-object p2, Lfxu;->c:Lkae;

    invoke-interface {p1, p2}, Lgxl;->b(Lkae;)V

    :cond_0
    return-void
.end method

.method public final d(Lgqz;Lbkb;)V
    .locals 9

    iget v0, p1, Lgqz;->c:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p2, p2, Lbkb;->a:Ljava/lang/Object;

    iget-object p1, p1, Lgqz;->b:Lgqy;

    iget v0, p1, Lgqy;->b:I

    iget p1, p1, Lgqy;->a:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    check-cast p2, [I

    invoke-static {p2, v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iget-object p1, p0, Lfxu;->e:Lkab;

    iget p1, p1, Lkab;->e:I

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lfxu;->d:Lgxl;

    invoke-interface {p2, p1}, Lgxl;->Y(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lfxu;->d:Lgxl;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const v0, 0x7f14047e

    invoke-static {v0, p2}, Ljpw;->h(I[Ljava/lang/Object;)Ligf;

    move-result-object p2

    invoke-interface {p1, p2}, Lgxl;->Q(Ligf;)V

    iget-object p1, p0, Lfxu;->d:Lgxl;

    sget-object p2, Lfxu;->b:Lkae;

    invoke-interface {p1, p2}, Lgxl;->b(Lkae;)V

    return-void

    :pswitch_1
    iget-object p2, p2, Lbkb;->a:Ljava/lang/Object;

    iget-object p1, p1, Lgqz;->b:Lgqy;

    iget v0, p1, Lgqy;->b:I

    iget p1, p1, Lgqy;->a:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    check-cast p2, [I

    invoke-static {p2, v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lfxu;->d:Lgxl;

    iget-object v0, p0, Lfxu;->e:Lkab;

    iget v0, v0, Lkab;->e:I

    invoke-interface {p2, p1, v0}, Lgxl;->X(Landroid/graphics/Bitmap;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
