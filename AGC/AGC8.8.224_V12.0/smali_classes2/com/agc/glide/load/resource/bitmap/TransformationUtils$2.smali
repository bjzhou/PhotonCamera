.class Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$bottomLeft:F

.field final synthetic val$bottomRight:F

.field final synthetic val$topLeft:F

.field final synthetic val$topRight:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;->val$topLeft:F

    iput p2, p0, Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;->val$topRight:F

    iput p3, p0, Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomRight:F

    iput p4, p0, Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomLeft:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundedCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget v2, p0, Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;->val$topLeft:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;->val$topRight:F

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    iget v2, p0, Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomRight:F

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, p0, Lcom/agc/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomLeft:F

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
