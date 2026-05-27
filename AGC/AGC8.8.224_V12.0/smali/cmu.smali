.class public final Lcmu;
.super Ljava/lang/Object;

# interfaces
.implements Lcmt;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcmu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Lmqp;
    .locals 8

    iget v0, p0, Lcmu;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    array-length v0, p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :pswitch_0
    :try_start_1
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v2, Lpar;->b:Lpar;

    array-length v3, p1

    invoke-static {v2, p1, v1, v3, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lpar;

    iget-object p1, p1, Lpar;->a:Lpau;

    if-nez p1, :cond_0

    sget-object p1, Lpau;->b:Lpau;

    :cond_0
    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p1, Lmpx;->a:Lmpx;

    :goto_0
    return-object p1

    :goto_1
    :try_start_2
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lpau;->b:Lpau;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    const-string v3, "image/width"

    sget-object v4, Lpas;->c:Lpas;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    sget-object v5, Lpaw;->b:Lpaw;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lnwn;->aC(J)V

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lpaw;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_1
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Lpas;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Lpas;->b:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v5, Lpas;->a:I

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lpas;

    invoke-virtual {v2, v3, v4}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    const-string v3, "image/height"

    sget-object v4, Lpas;->c:Lpas;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    sget-object v5, Lpaw;->b:Lpaw;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Lnwn;->aC(J)V

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lpaw;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_2
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Lpas;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v5, Lpas;->b:Ljava/lang/Object;

    iput v0, v5, Lpas;->a:I

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lpas;

    invoke-virtual {v2, v3, v0}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    const-string v0, "image/pixel_data"

    invoke-static {p1}, Llfd;->a(Landroid/graphics/Bitmap;)Llfb;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v3, Lpas;->c:Lpas;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    sget-object v4, Lpaq;->b:Lpaq;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    check-cast v1, Llfc;

    invoke-virtual {v1}, Llfc;->c()Llfg;

    move-result-object v1

    invoke-interface {v1}, Llfg;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lnvt;->t(Ljava/nio/ByteBuffer;)Lnvt;

    move-result-object v1

    invoke-virtual {v4, v1}, Lnwn;->az(Lnvt;)V

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lpaq;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lpas;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v4, Lpas;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v4, Lpas;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lpas;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2, v0, v1}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lpau;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    sget-object p1, Lmpx;->a:Lmpx;

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
