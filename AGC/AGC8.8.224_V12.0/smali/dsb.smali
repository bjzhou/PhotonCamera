.class final Ldsb;
.super Ljava/lang/Object;

# interfaces
.implements Ldrz;


# instance fields
.field private final a:Landroid/hardware/HardwareBuffer;

.field private final b:Landroid/graphics/ColorSpace;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/hardware/HardwareBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldsb;->a:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Ldsb;->b:Landroid/graphics/ColorSpace;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ldsb;->a:Landroid/hardware/HardwareBuffer;

    iget-object v1, p0, Ldsb;->b:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ldsb;->a:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
