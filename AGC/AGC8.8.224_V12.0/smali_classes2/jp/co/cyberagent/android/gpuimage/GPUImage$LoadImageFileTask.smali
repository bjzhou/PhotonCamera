.class Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;
.super Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageFileTask"
.end annotation


# instance fields
.field private final imageFile:Ljava/io/File;

.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljava/io/File;)V
    .locals 0
    .param p2, "gpuImage"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 602
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .line 603
    invoke-direct {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;)V

    .line 604
    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->imageFile:Ljava/io/File;

    .line 605
    return-void
.end method


# virtual methods
.method protected decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 609
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getImageOrientation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 614
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, "exif":Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 616
    .local v1, "orientation":I
    packed-switch v1, :pswitch_data_0

    .line 626
    :goto_0
    :pswitch_0
    return v2

    .line 620
    :pswitch_1
    const/16 v2, 0x5a

    goto :goto_0

    .line 622
    :pswitch_2
    const/16 v2, 0xb4

    goto :goto_0

    .line 624
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
