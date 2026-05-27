.class public final Lbww;
.super Ljava/lang/Object;

# interfaces
.implements Lbwx;


# instance fields
.field private final a:Ljava/util/List;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lbsu;I)V
    .locals 0

    iput p4, p0, Lbww;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p3, p0, Lbww;->d:Ljava/lang/Object;

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p2, p0, Lbww;->a:Ljava/util/List;

    new-instance p2, Lbrc;

    invoke-direct {p2, p1}, Lbrc;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lbww;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;Lbsu;I)V
    .locals 0

    iput p4, p0, Lbww;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p3, p0, Lbww;->d:Ljava/lang/Object;

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p2, p0, Lbww;->a:Ljava/util/List;

    new-instance p2, Lbqz;

    invoke-direct {p2, p1, p3}, Lbqz;-><init>(Ljava/io/InputStream;Lbsu;)V

    iput-object p2, p0, Lbww;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/List;Lbsu;I)V
    .locals 0

    iput p4, p0, Lbww;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbww;->d:Ljava/lang/Object;

    iput-object p2, p0, Lbww;->a:Ljava/util/List;

    iput-object p3, p0, Lbww;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget v0, p0, Lbww;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbww;->a:Ljava/util/List;

    iget-object v1, p0, Lbww;->c:Ljava/lang/Object;

    iget-object v2, p0, Lbww;->d:Ljava/lang/Object;

    new-instance v3, Lbpy;

    check-cast v1, Lbrc;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lbpy;-><init>(Lbrc;Lbsu;I)V

    invoke-static {v0, v3}, Lbze;->C(Ljava/util/List;Lbpz;)I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lbww;->a:Ljava/util/List;

    iget-object v1, p0, Lbww;->d:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcaj;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lbww;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    new-instance v3, Lbpy;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lbpy;-><init>(Ljava/nio/ByteBuffer;Lbsu;I)V

    invoke-static {v0, v3}, Lbze;->C(Ljava/util/List;Lbpz;)I

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lbww;->a:Ljava/util/List;

    iget-object v1, p0, Lbww;->c:Ljava/lang/Object;

    check-cast v1, Lbqz;

    invoke-virtual {v1}, Lbqz;->c()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lbww;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lbze;->B(Ljava/util/List;Ljava/io/InputStream;Lbsu;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lbww;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbww;->c:Ljava/lang/Object;

    check-cast v0, Lbrc;

    invoke-virtual {v0}, Lbrc;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lbww;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcaj;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcaj;->a(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lbww;->c:Ljava/lang/Object;

    check-cast v0, Lbqz;

    invoke-virtual {v0}, Lbqz;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 4

    iget v0, p0, Lbww;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbww;->a:Ljava/util/List;

    iget-object v1, p0, Lbww;->c:Ljava/lang/Object;

    iget-object v2, p0, Lbww;->d:Ljava/lang/Object;

    new-instance v3, Lbpx;

    check-cast v1, Lbrc;

    invoke-direct {v3, v1, v2}, Lbpx;-><init>(Lbrc;Lbsu;)V

    invoke-static {v0, v3}, Lbze;->F(Ljava/util/List;Lbqa;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lbww;->a:Ljava/util/List;

    iget-object v1, p0, Lbww;->d:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcaj;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lbze;->D(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lbww;->a:Ljava/util/List;

    iget-object v1, p0, Lbww;->c:Ljava/lang/Object;

    check-cast v1, Lbqz;

    invoke-virtual {v1}, Lbqz;->c()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lbww;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lbze;->E(Ljava/util/List;Ljava/io/InputStream;Lbsu;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lbww;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lbww;->c:Ljava/lang/Object;

    check-cast v0, Lbqz;

    iget-object v0, v0, Lbqz;->a:Lbxa;

    invoke-virtual {v0}, Lbxa;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
