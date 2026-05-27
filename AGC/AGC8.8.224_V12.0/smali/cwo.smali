.class final Lcwo;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lklv;

.field final synthetic c:Lgxz;

.field final synthetic d:Lcwp;


# direct methods
.method public constructor <init>(Lcwp;Lnph;Lklv;Lgxz;)V
    .locals 0

    iput-object p1, p0, Lcwo;->d:Lcwp;

    iput-object p2, p0, Lcwo;->a:Lnph;

    iput-object p3, p0, Lcwo;->b:Lklv;

    iput-object p4, p0, Lcwo;->c:Lgxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcwp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Failed to take snapshot."

    const/16 v2, 0x2f1

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Lcwo;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Landroid/graphics/Bitmap;

    :try_start_0
    iget-object v0, p0, Lcwo;->a:Lnph;

    iget-object v1, p0, Lcwo;->d:Lcwp;

    iget-object v1, v1, Lcwp;->b:Lcwq;

    sget-object v2, Lkab;->a:Lkab;

    iget-object v3, p0, Lcwo;->b:Lklv;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcwq;->a([BLkab;Lklv;)Lcsv;

    move-result-object v1

    new-instance v2, Lkaf;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lkaf;-><init>(II)V

    iput-object v2, v1, Lcsv;->g:Lkaf;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcsv;->c(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcwo;->d:Lcwp;

    iget-wide v4, p1, Lcwp;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcsv;->b(J)V

    iget-object p1, p0, Lcwo;->c:Lgxz;

    iput-object p1, v1, Lcsv;->j:Lgxz;

    invoke-virtual {v1}, Lcsv;->a()Lcsw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcwo;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
