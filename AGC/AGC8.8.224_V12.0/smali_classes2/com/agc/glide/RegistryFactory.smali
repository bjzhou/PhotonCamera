.class final Lcom/agc/glide/RegistryFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndInitRegistry(Lcom/agc/glide/Glide;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)Lcom/agc/glide/Registry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/Glide;",
            "Ljava/util/List<",
            "Lcom/agc/glide/module/GlideModule;",
            ">;",
            "Lcom/agc/glide/module/AppGlideModule;",
            ")",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/Glide;->getBitmapPool()Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/glide/Glide;->getArrayPool()Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v1

    invoke-virtual {p0}, Lcom/agc/glide/Glide;->getGlideContext()Lcom/agc/glide/GlideContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/agc/glide/Glide;->getGlideContext()Lcom/agc/glide/GlideContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/agc/glide/GlideContext;->getExperiments()Lcom/agc/glide/GlideExperiments;

    move-result-object v3

    new-instance v4, Lcom/agc/glide/Registry;

    invoke-direct {v4}, Lcom/agc/glide/Registry;-><init>()V

    invoke-static {v2, v4, v0, v1, v3}, Lcom/agc/glide/RegistryFactory;->initializeDefaults(Landroid/content/Context;Lcom/agc/glide/Registry;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/GlideExperiments;)V

    invoke-static {v2, p0, v4, p1, p2}, Lcom/agc/glide/RegistryFactory;->initializeModules(Landroid/content/Context;Lcom/agc/glide/Glide;Lcom/agc/glide/Registry;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)V

    return-object v4
.end method

.method private static initializeDefaults(Landroid/content/Context;Lcom/agc/glide/Registry;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/GlideExperiments;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-class v4, [B

    new-instance v5, Lcom/agc/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v5}, Lcom/agc/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v1, v5}, Lcom/agc/glide/Registry;->register(Lcom/agc/glide/load/ImageHeaderParser;)Lcom/agc/glide/Registry;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_0

    new-instance v6, Lcom/agc/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;

    invoke-direct {v6}, Lcom/agc/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;-><init>()V

    invoke-virtual {v1, v6}, Lcom/agc/glide/Registry;->register(Lcom/agc/glide/load/ImageHeaderParser;)Lcom/agc/glide/Registry;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/agc/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/agc/glide/load/resource/gif/ByteBufferGifDecoder;

    invoke-direct {v8, v0, v7, v2, v3}, Lcom/agc/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static/range {p2 .. p2}, Lcom/agc/glide/load/resource/bitmap/VideoDecoder;->parcel(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/agc/glide/load/ResourceDecoder;

    move-result-object v9

    new-instance v10, Lcom/agc/glide/load/resource/bitmap/Downsampler;

    invoke-virtual/range {p1 .. p1}, Lcom/agc/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-direct {v10, v11, v12, v2, v3}, Lcom/agc/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    const/16 v11, 0x1c

    if-lt v5, v11, :cond_1

    const-class v12, Lcom/agc/glide/GlideBuilder$EnableImageDecoderForBitmaps;

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Lcom/agc/glide/GlideExperiments;->isEnabled(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Lcom/agc/glide/load/resource/bitmap/InputStreamBitmapImageDecoderResourceDecoder;

    invoke-direct {v12}, Lcom/agc/glide/load/resource/bitmap/InputStreamBitmapImageDecoderResourceDecoder;-><init>()V

    new-instance v13, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;

    invoke-direct {v13}, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v13, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    invoke-direct {v13, v10}, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/agc/glide/load/resource/bitmap/Downsampler;)V

    new-instance v12, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v12, v10, v3}, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/agc/glide/load/resource/bitmap/Downsampler;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    :goto_0
    const-string v14, "Animation"

    if-lt v5, v11, :cond_2

    invoke-static {v7, v3}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->streamDecoder(Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/load/ResourceDecoder;

    move-result-object v11

    const-class v15, Ljava/io/InputStream;

    move-object/from16 v16, v4

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v14, v15, v4, v11}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    invoke-static {v7, v3}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->byteBufferDecoder(Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/load/ResourceDecoder;

    move-result-object v4

    const-class v11, Ljava/nio/ByteBuffer;

    const-class v15, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v14, v11, v15, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    goto :goto_1

    :cond_2
    move-object/from16 v16, v4

    :goto_1
    new-instance v4, Lcom/agc/glide/load/resource/drawable/ResourceDrawableDecoder;

    invoke-direct {v4, v0}, Lcom/agc/glide/load/resource/drawable/ResourceDrawableDecoder;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/agc/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v11, v3}, Lcom/agc/glide/load/resource/bitmap/BitmapEncoder;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    new-instance v15, Lcom/agc/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v15}, Lcom/agc/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    move-object/from16 p4, v15

    new-instance v15, Lcom/agc/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    invoke-direct {v15}, Lcom/agc/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    move-object/from16 v17, v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v18, v15

    new-instance v15, Lcom/agc/glide/load/model/ByteBufferEncoder;

    invoke-direct {v15}, Lcom/agc/glide/load/model/ByteBufferEncoder;-><init>()V

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v15}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Lcom/agc/glide/load/Encoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v15, Lcom/agc/glide/load/model/StreamEncoder;

    invoke-direct {v15, v3}, Lcom/agc/glide/load/model/StreamEncoder;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object/from16 v19, v4

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {v0, v4, v15}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Lcom/agc/glide/load/Encoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v15, Landroid/graphics/Bitmap;

    move-object/from16 v20, v14

    const-string v14, "Bitmap"

    invoke-virtual {v0, v14, v4, v15, v13}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/io/InputStream;

    const-class v15, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v14, v4, v15, v12}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    invoke-static {}, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/agc/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;

    invoke-direct {v0, v10}, Lcom/agc/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;-><init>(Lcom/agc/glide/load/resource/bitmap/Downsampler;)V

    const-class v4, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v14, v4, v10, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    :cond_3
    const/16 v0, 0x10

    if-lt v5, v0, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/agc/glide/load/resource/bitmap/VideoDecoder;->asset(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/agc/glide/load/ResourceDecoder;

    move-result-object v0

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v14, v4, v10, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    :cond_4
    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v14, v0, v4, v9}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-static {}, Lcom/agc/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/agc/glide/load/model/UnitModelLoader$Factory;

    move-result-object v4

    const-class v10, Landroid/graphics/Bitmap;

    const-class v15, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v10, v15, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/bitmap/UnitBitmapDecoder;

    invoke-direct {v4}, Lcom/agc/glide/load/resource/bitmap/UnitBitmapDecoder;-><init>()V

    const-class v10, Landroid/graphics/Bitmap;

    const-class v15, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v14, v10, v15, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v11}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v4, v6, v13}, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/agc/glide/load/ResourceDecoder;)V

    const-class v10, Ljava/nio/ByteBuffer;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    const-string v15, "BitmapDrawable"

    invoke-virtual {v0, v15, v10, v13, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v4, v6, v12}, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/agc/glide/load/ResourceDecoder;)V

    const-class v10, Ljava/io/InputStream;

    const-class v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v15, v10, v12, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v4, v6, v9}, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/agc/glide/load/ResourceDecoder;)V

    const-class v9, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v15, v9, v10, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;

    invoke-direct {v4, v2, v11}, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/ResourceEncoder;)V

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v9, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/gif/StreamGifDecoder;

    invoke-direct {v4, v7, v8, v3}, Lcom/agc/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/List;Lcom/agc/glide/load/ResourceDecoder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    const-class v7, Ljava/io/InputStream;

    const-class v9, Lcom/agc/glide/load/resource/gif/GifDrawable;

    move-object/from16 v10, v20

    invoke-virtual {v0, v10, v7, v9, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v7, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0, v10, v4, v7, v8}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/gif/GifDrawableEncoder;

    invoke-direct {v4}, Lcom/agc/glide/load/resource/gif/GifDrawableEncoder;-><init>()V

    const-class v7, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0, v7, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-static {}, Lcom/agc/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/agc/glide/load/model/UnitModelLoader$Factory;

    move-result-object v4

    const-class v7, Lcom/agc/glide/gifdecoder/GifDecoder;

    const-class v8, Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0, v7, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {v4, v2}, Lcom/agc/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)V

    const-class v7, Lcom/agc/glide/gifdecoder/GifDecoder;

    const-class v8, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v14, v7, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/net/Uri;

    const-class v7, Landroid/graphics/drawable/Drawable;

    move-object/from16 v8, v19

    invoke-virtual {v0, v4, v7, v8}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/bitmap/ResourceBitmapDecoder;

    invoke-direct {v4, v8, v2}, Lcom/agc/glide/load/resource/bitmap/ResourceBitmapDecoder;-><init>(Lcom/agc/glide/load/resource/drawable/ResourceDrawableDecoder;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)V

    const-class v7, Landroid/net/Uri;

    const-class v8, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/bytes/ByteBufferRewinder$Factory;

    invoke-direct {v4}, Lcom/agc/glide/load/resource/bytes/ByteBufferRewinder$Factory;-><init>()V

    invoke-virtual {v0, v4}, Lcom/agc/glide/Registry;->register(Lcom/agc/glide/load/data/DataRewinder$Factory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/model/ByteBufferFileLoader$Factory;

    invoke-direct {v4}, Lcom/agc/glide/load/model/ByteBufferFileLoader$Factory;-><init>()V

    const-class v7, Ljava/io/File;

    const-class v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/model/FileLoader$StreamFactory;

    invoke-direct {v4}, Lcom/agc/glide/load/model/FileLoader$StreamFactory;-><init>()V

    const-class v7, Ljava/io/File;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v0, v7, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/resource/file/FileDecoder;

    invoke-direct {v4}, Lcom/agc/glide/load/resource/file/FileDecoder;-><init>()V

    const-class v7, Ljava/io/File;

    const-class v8, Ljava/io/File;

    invoke-virtual {v0, v7, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/model/FileLoader$FileDescriptorFactory;

    invoke-direct {v4}, Lcom/agc/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    const-class v7, Ljava/io/File;

    const-class v8, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v7, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-static {}, Lcom/agc/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/agc/glide/load/model/UnitModelLoader$Factory;

    move-result-object v4

    const-class v7, Ljava/io/File;

    const-class v8, Ljava/io/File;

    invoke-virtual {v0, v7, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v4, Lcom/agc/glide/load/data/InputStreamRewinder$Factory;

    invoke-direct {v4, v3}, Lcom/agc/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-virtual {v0, v4}, Lcom/agc/glide/Registry;->register(Lcom/agc/glide/load/data/DataRewinder$Factory;)Lcom/agc/glide/Registry;

    invoke-static {}, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder$Factory;

    invoke-direct {v0}, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder$Factory;-><init>()V

    invoke-virtual {v1, v0}, Lcom/agc/glide/Registry;->register(Lcom/agc/glide/load/data/DataRewinder$Factory;)Lcom/agc/glide/Registry;

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/agc/glide/load/model/DirectResourceLoader;->inputStreamFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/agc/glide/load/model/DirectResourceLoader;->assetFileDescriptorFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/agc/glide/load/model/DirectResourceLoader;->drawableFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;

    move-result-object v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v1, v7, v8, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v8

    const-class v9, Ljava/lang/Integer;

    const-class v10, Ljava/io/InputStream;

    invoke-virtual {v8, v9, v10, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v8, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v7, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v8, Ljava/lang/Integer;

    const-class v9, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v8, v9, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7, v3, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    const-class v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/agc/glide/load/model/ResourceUriLoader;->newStreamFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v0, v4, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/agc/glide/load/model/ResourceUriLoader;->newAssetFileDescriptorFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v8, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v4, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    new-instance v0, Lcom/agc/glide/load/model/ResourceLoader$UriFactory;

    invoke-direct {v0, v6}, Lcom/agc/glide/load/model/ResourceLoader$UriFactory;-><init>(Landroid/content/res/Resources;)V

    new-instance v3, Lcom/agc/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;

    invoke-direct {v3, v6}, Lcom/agc/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    new-instance v4, Lcom/agc/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v4, v6}, Lcom/agc/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    const-class v8, Ljava/lang/Integer;

    const-class v9, Landroid/net/Uri;

    invoke-virtual {v1, v8, v9, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v8

    const-class v9, Landroid/net/Uri;

    invoke-virtual {v8, v7, v9, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v8, Ljava/lang/Integer;

    const-class v9, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v8, v9, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v8, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v7, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v0, v3, v8, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {v0, v7, v3, v4}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    new-instance v0, Lcom/agc/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v0}, Lcom/agc/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {v1, v3, v4, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    const-class v4, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/StringLoader$StreamFactory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/StringLoader$StreamFactory;-><init>()V

    const-class v4, Ljava/lang/String;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/StringLoader$FileDescriptorFactory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/StringLoader$FileDescriptorFactory;-><init>()V

    const-class v4, Ljava/lang/String;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/StringLoader$AssetFileDescriptorFactory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/StringLoader$AssetFileDescriptorFactory;-><init>()V

    const-class v4, Ljava/lang/String;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/AssetUriLoader$StreamFactory;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/agc/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    const-class v4, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/agc/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    const-class v4, Landroid/net/Uri;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Lcom/agc/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    const-class v7, Landroid/net/Uri;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v0, v7, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    invoke-direct {v3, v4}, Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    const-class v7, Landroid/net/Uri;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v0, v7, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    const/16 v0, 0x1d

    if-lt v5, v0, :cond_6

    new-instance v0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;

    invoke-direct {v0, v4}, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    const-class v3, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v1, v3, v7, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    new-instance v0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;

    invoke-direct {v0, v4}, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;-><init>(Landroid/content/Context;)V

    const-class v3, Landroid/net/Uri;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v3, v7, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    :cond_6
    new-instance v0, Lcom/agc/glide/load/model/UriLoader$StreamFactory;

    move-object/from16 v3, v18

    invoke-direct {v0, v3}, Lcom/agc/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;)V

    const-class v7, Landroid/net/Uri;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v1, v7, v8, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v7, Lcom/agc/glide/load/model/UriLoader$FileDescriptorFactory;

    invoke-direct {v7, v3}, Lcom/agc/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    const-class v8, Landroid/net/Uri;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v8, v9, v7}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v7, Lcom/agc/glide/load/model/UriLoader$AssetFileDescriptorFactory;

    invoke-direct {v7, v3}, Lcom/agc/glide/load/model/UriLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    const-class v3, Landroid/net/Uri;

    const-class v8, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v3, v8, v7}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/UrlUriLoader$StreamFactory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    const-class v7, Landroid/net/Uri;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v0, v7, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/stream/UrlLoader$StreamFactory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/stream/UrlLoader$StreamFactory;-><init>()V

    const-class v7, Ljava/net/URL;

    const-class v8, Ljava/io/InputStream;

    invoke-virtual {v0, v7, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/MediaStoreFileLoader$Factory;

    invoke-direct {v3, v4}, Lcom/agc/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    const-class v4, Landroid/net/Uri;

    const-class v7, Ljava/io/File;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    const-class v4, Lcom/agc/glide/load/model/GlideUrl;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory;-><init>()V

    const-class v4, Ljava/nio/ByteBuffer;

    move-object/from16 v7, v16

    invoke-virtual {v0, v7, v4, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {v3}, Lcom/agc/glide/load/model/ByteArrayLoader$StreamFactory;-><init>()V

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {v0, v7, v4, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-static {}, Lcom/agc/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/agc/glide/load/model/UnitModelLoader$Factory;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v8, Landroid/net/Uri;

    invoke-virtual {v0, v4, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-static {}, Lcom/agc/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/agc/glide/load/model/UnitModelLoader$Factory;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/resource/drawable/UnitDrawableDecoder;

    invoke-direct {v3}, Lcom/agc/glide/load/resource/drawable/UnitDrawableDecoder;-><init>()V

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v8, v3}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/resource/transcode/BitmapDrawableTranscoder;

    invoke-direct {v3, v6}, Lcom/agc/glide/load/resource/transcode/BitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;)V

    const-class v4, Landroid/graphics/Bitmap;

    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v4, v8, v3}, Lcom/agc/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v3, Landroid/graphics/Bitmap;

    move-object/from16 v4, p4

    invoke-virtual {v0, v3, v7, v4}, Lcom/agc/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    new-instance v3, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;

    move-object/from16 v8, v17

    invoke-direct {v3, v2, v4, v8}, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;)V

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v7, v3}, Lcom/agc/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;)Lcom/agc/glide/Registry;

    move-result-object v0

    const-class v3, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0, v3, v7, v8}, Lcom/agc/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;)Lcom/agc/glide/Registry;

    const/16 v0, 0x17

    if-lt v5, v0, :cond_7

    invoke-static/range {p2 .. p2}, Lcom/agc/glide/load/resource/bitmap/VideoDecoder;->byteBuffer(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/agc/glide/load/ResourceDecoder;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    new-instance v2, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v2, v6, v0}, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/agc/glide/load/ResourceDecoder;)V

    const-class v0, Ljava/nio/ByteBuffer;

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0, v3, v2}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    :cond_7
    return-void
.end method

.method private static initializeModules(Landroid/content/Context;Lcom/agc/glide/Glide;Lcom/agc/glide/Registry;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/Glide;",
            "Lcom/agc/glide/Registry;",
            "Ljava/util/List<",
            "Lcom/agc/glide/module/GlideModule;",
            ">;",
            "Lcom/agc/glide/module/AppGlideModule;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/module/GlideModule;

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/agc/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/agc/glide/Glide;Lcom/agc/glide/Registry;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4, p0, p1, p2}, Lcom/agc/glide/module/LibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/agc/glide/Glide;Lcom/agc/glide/Registry;)V

    :cond_1
    return-void
.end method

.method public static lazilyCreateAndInitializeRegistry(Lcom/agc/glide/Glide;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/Glide;",
            "Ljava/util/List<",
            "Lcom/agc/glide/module/GlideModule;",
            ">;",
            "Lcom/agc/glide/module/AppGlideModule;",
            ")",
            "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
            "Lcom/agc/glide/Registry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/RegistryFactory$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/agc/glide/RegistryFactory$1;-><init>(Lcom/agc/glide/Glide;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)V

    return-object v0
.end method
