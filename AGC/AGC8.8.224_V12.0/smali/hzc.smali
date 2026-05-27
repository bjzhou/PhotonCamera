.class public final synthetic Lhzc;
.super Ljava/lang/Object;

# interfaces
.implements Lxw;


# instance fields
.field public final synthetic a:Lhzh;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:J

.field public final synthetic d:Loem;


# direct methods
.method public synthetic constructor <init>(Lhzh;Landroid/graphics/Bitmap;Loem;J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzc;->a:Lhzh;

    iput-object p2, p0, Lhzc;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lhzc;->d:Loem;

    iput-wide p4, p0, Lhzc;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lxu;)Ljava/lang/Object;
    .locals 10

    iget-object v1, p0, Lhzc;->a:Lhzh;

    iget-object v2, p0, Lhzc;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lhzc;->d:Loem;

    iget-wide v4, p0, Lhzc;->c:J

    invoke-virtual {v1}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v8

    new-instance v9, Lhzf;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lhzf;-><init>(Lhzh;Landroid/graphics/Bitmap;Loem;JLxu;[B)V

    invoke-virtual {v8, v9}, Lcom/google/lens/sdk/LensApi;->checkPostCaptureAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    const-string p1, "LensApi#checkPostCaptureAvailability for launchLensWithBitmap"

    return-object p1
.end method
