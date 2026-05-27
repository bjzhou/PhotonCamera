.class public final Lbwa;
.super Ljava/lang/Object;

# interfaces
.implements Lbqh;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbwa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lbvy;

    invoke-direct {p1}, Lbvy;-><init>()V

    iput-object p1, p0, Lbwa;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    iput p1, p0, Lbwa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lbvy;

    invoke-direct {p1}, Lbvy;-><init>()V

    iput-object p1, p0, Lbwa;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbsw;I)V
    .locals 0

    iput p2, p0, Lbwa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwa;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbwp;I)V
    .locals 0

    iput p2, p0, Lbwa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwa;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldne;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Lbwa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwa;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILbqf;)Lbsn;
    .locals 7

    iget v0, p0, Lbwa;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lbpn;

    invoke-interface {p1}, Lbpn;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lbwa;->b:Ljava/lang/Object;

    invoke-static {p1, p2}, Lbwy;->g(Landroid/graphics/Bitmap;Lbsw;)Lbwy;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcaj;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Ldne;->z(Landroid/graphics/ImageDecoder$Source;IILbqf;)Lbsn;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Ldne;->z(Landroid/graphics/ImageDecoder$Source;IILbqf;)Lbsn;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lbwa;->b:Ljava/lang/Object;

    new-instance v2, Lbww;

    move-object v1, v0

    check-cast v1, Lbwp;

    iget-object v0, v1, Lbwp;->g:Ljava/util/List;

    iget-object v3, v1, Lbwp;->f:Lbsu;

    const/4 v4, 0x2

    invoke-direct {v2, p1, v0, v3, v4}, Lbww;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lbsu;I)V

    sget-object v6, Lbwp;->e:Lbwo;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lbwp;->a(Lbwx;IILbqf;Lbwo;)Lbsn;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcaj;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, Lbwa;->b:Ljava/lang/Object;

    check-cast v0, Lbvy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbvy;->c(Landroid/graphics/ImageDecoder$Source;IILbqf;)Lbsn;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lbwa;->b:Ljava/lang/Object;

    new-instance v2, Lbww;

    move-object v1, v0

    check-cast v1, Lbwp;

    iget-object v0, v1, Lbwp;->g:Ljava/util/List;

    iget-object v3, v1, Lbwp;->f:Lbsu;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v0, v3, v4}, Lbww;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;Lbsu;I)V

    sget-object v6, Lbwp;->e:Lbwo;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lbwp;->a(Lbwx;IILbqf;Lbwo;)Lbsn;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, Lbwa;->b:Ljava/lang/Object;

    check-cast v0, Lbvy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbvy;->c(Landroid/graphics/ImageDecoder$Source;IILbqf;)Lbsn;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;Lbqf;)Z
    .locals 4

    iget p2, p0, Lbwa;->a:I

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lbpn;

    return v0

    :pswitch_0
    check-cast p1, Ljava/io/InputStream;

    iget-object p2, p0, Lbwa;->b:Ljava/lang/Object;

    check-cast p2, Ldne;

    iget-object v0, p2, Ldne;->b:Ljava/lang/Object;

    iget-object p2, p2, Ldne;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lbze;->E(Ljava/util/List;Ljava/io/InputStream;Lbsu;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-static {p1}, Ldne;->A(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lbwa;->b:Ljava/lang/Object;

    check-cast p2, Ldne;

    iget-object p2, p2, Ldne;->b:Ljava/lang/Object;

    invoke-static {p2, p1}, Lbze;->D(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-static {p1}, Ldne;->A(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HONOR"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p1

    const-wide/32 v1, 0x20000000

    cmp-long v3, p1, v1

    if-gtz v3, :cond_2

    :cond_1
    invoke-static {}, Lbrc;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1

    :pswitch_3
    check-cast p1, Ljava/io/InputStream;

    return v0

    :pswitch_4
    check-cast p1, Ljava/nio/ByteBuffer;

    return v0

    :pswitch_5
    check-cast p1, Ljava/nio/ByteBuffer;

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
