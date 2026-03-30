.class public final Llvp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field private final c:Ljava/util/UUID;

.field private final d:I

.field private final e:J

.field private final f:Lllc;

.field private final g:Llxo;

.field private final h:[B

.field private final i:Lcom/google/android/libraries/camera/exif/ExifInterface;

.field private final j:Lhoh;


# direct methods
.method public constructor <init>(IJLjava/util/UUID;II[BLcom/google/android/libraries/camera/exif/ExifInterface;Lllc;Llxo;Lhoh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Llvp;->e:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p8, p0, Llvp;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p10, p0, Llvp;->g:Llxo;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p11, p0, Llvp;->j:Lhoh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iput p1, p0, Llvp;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput p6, p0, Llvp;->b:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iput p5, p0, Llvp;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Llvp;->c:Ljava/util/UUID;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p7, p0, Llvp;->h:[B

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iput-object p9, p0, Llvp;->f:Lllc;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a(Llxc;Lrss;Lrss;)Lmla;
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Llxc;->b()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Llxc;->a()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lmla;-><init>(Lpsz;)V

    :try_start_1
    iget-object v1, p1, Llxc;->b:Lpsf;

    nop

    invoke-interface {v1}, Lpsf;->e()Ljava/io/FileOutputStream;

    move-result-object v1

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v5, p1, Llxc;->c:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p1, Llxc;->d:Lidb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lidb;->f()Ljava/lang/String;

    move-result-object v6

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    move-object v3, p2

    nop

    nop

    nop

    nop

    move-object v4, p3

    nop

    nop

    nop

    move-object v7, v1

    nop

    nop

    invoke-virtual/range {v2 .. v7}, Llvp;->b(Lrss;Lrss;ZLjava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p2

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lmla;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    sget-object v1, Lpsz;->c:Lpsz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final b(Lrss;Lrss;ZLjava/lang/String;Ljava/io/OutputStream;)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Llvp;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v3, v2

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    :try_start_1
    iget-object v0, v0, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    check-cast v2, Lexq;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_c
    iget-object v0, p0, Llvp;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    :try_start_2
    iget-object v0, p0, Llvp;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    iget-object v0, v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v4, Lexs;->a:Lts;

    nop

    nop

    nop

    invoke-static {v0}, Leyf;->a(Ljava/lang/Object;)Lexq;

    move-result-object v2

    nop

    nop
    :try_end_2
    .catch Lexp; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :goto_13
    :try_start_3
    iget-object v0, p0, Llvp;->f:Lllc;

    nop

    nop

    iget-object v0, v0, Lllc;->c:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    iget-object v0, p0, Llvp;->f:Lllc;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lllc;->b:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llvp;->f:Lllc;

    nop

    nop

    iget-object v0, v0, Lllc;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lexq;

    nop

    nop

    nop

    invoke-static {v2, v0}, Lpuf;->b(Lexq;Lexq;)Lexq;

    move-result-object v2

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v0, p0, Llvp;->f:Lllc;

    nop

    nop

    iget-object v0, v0, Lllc;->a:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llvp;->f:Lllc;

    nop

    nop

    iget-object v0, v0, Lllc;->a:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v0}, Lpuf;->b(Lexq;Lexq;)Lexq;

    move-result-object v3

    nop

    iget-object v0, p0, Llvp;->f:Lllc;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lllc;->b:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lexq;

    nop

    invoke-static {v2, v0}, Lpuf;->b(Lexq;Lexq;)Lexq;

    move-result-object v2

    nop

    nop

    goto :goto_14

    nop

    :cond_5
    iget-object v0, p0, Llvp;->f:Lllc;

    nop

    iget-object v0, v0, Lllc;->b:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lexq;

    nop

    nop

    nop

    invoke-static {v2, v0}, Lpuf;->b(Lexq;Lexq;)Lexq;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_14
    iget-object v0, p0, Llvp;->j:Lhoh;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    sget-object v4, Lhni;->H:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    iget-object v0, p0, Llvp;->g:Llxo;

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    sget-object v4, Llxo;->k:Llxo;

    nop

    nop

    nop

    nop

    if-ne v0, v4, :cond_8

    nop

    nop

    nop

    if-nez v3, :cond_7

    nop

    nop

    sget-object p0, Lexs;->a:Lts;

    nop

    nop

    new-instance p0, Leye;

    nop

    invoke-direct {p0}, Leye;-><init>()V

    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    :cond_7
    invoke-static {v3, p4}, Lpuf;->q(Lexq;Ljava/lang/String;)V

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_8
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Llvp;->c:Ljava/util/UUID;

    nop

    nop

    nop

    nop

    nop

    xor-int/lit8 v0, p3, 0x1

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lexs;->a:Lts;

    nop

    nop

    new-instance v3, Leye;

    nop

    nop

    invoke-direct {v3}, Leye;-><init>()V

    invoke-static {p0, p3, p4, v0, v3}, Lkav;->O(Ljava/util/UUID;ZLjava/lang/String;ZLexq;)V

    goto :goto_15

    nop

    nop

    :cond_9
    iget-object p0, p0, Llvp;->c:Ljava/util/UUID;

    nop

    xor-int/lit8 v0, p3, 0x1

    nop

    nop

    invoke-static {p0, p3, p4, v0, v3}, Lkav;->O(Ljava/util/UUID;ZLjava/lang/String;ZLexq;)V

    :goto_15
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p3, Lpuc;

    nop

    nop

    nop

    invoke-direct {p3, v1}, Lpuc;-><init>(Ljava/io/InputStream;)V

    invoke-static {p3, p0, v3, v2}, Lpuf;->r(Lpue;Ljava/io/OutputStream;Lexq;Lexq;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    nop

    invoke-virtual {p5, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_b

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->h()Z

    move-result p0

    nop

    nop

    if-eqz p0, :cond_a

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Ljava/lang/String;

    nop

    nop

    nop

    check-cast p0, [B

    nop

    invoke-static {p0, p2}, Lioc;->b([BLjava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, [B

    nop

    nop

    nop

    nop

    invoke-virtual {p5, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_c
    :try_start_4
    iget-object v3, p0, Llvp;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bz:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    nop

    nop

    nop

    nop

    sget-object v4, Lexs;->a:Lts;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Leyf;->a(Ljava/lang/Object;)Lexq;

    move-result-object v3

    nop

    nop
    :try_end_4
    .catch Lexp; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_3

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_5

    nop

    nop

    :catch_1
    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->m(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p5

    nop

    nop

    nop

    :try_start_5
    iget-object v0, p0, Llvp;->h:[B

    nop

    nop

    nop

    iget-object v1, p0, Llvp;->f:Lllc;

    nop

    iget-object v1, v1, Lllc;->c:Lrss;

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-eqz v1, :cond_d

    nop

    iget-object v1, p0, Llvp;->h:[B

    nop

    nop

    iget-object v3, p0, Llvp;->f:Lllc;

    nop

    nop

    iget-object v3, v3, Lllc;->c:Lrss;

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    nop

    nop

    invoke-static {v1, v3, v2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->d([BLcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lltn;)[B

    move-result-object v1

    nop

    iget-object v3, p0, Llvp;->f:Lllc;

    nop

    iget-object v3, v3, Lllc;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->close()V

    if-eqz v1, :cond_d

    nop

    nop

    nop

    move-object v0, v1

    nop

    nop

    nop

    nop

    :cond_d
    new-instance v1, Ljava/io/ByteArrayInputStream;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lpuf;->e(Ljava/io/InputStream;)Lrsu;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_e

    nop

    iget-object v3, v0, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    if-eqz v3, :cond_e

    nop

    check-cast v3, Lexq;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_5

    nop

    :cond_e
    iget-object v3, p0, Llvp;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    iget-object v3, v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bz:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v3}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Llvp;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v2, p1, Llvp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p0, p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iget-wide v2, p0, Llvp;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Llvp;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    :goto_f
    return v1

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_15
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v4, p1, Llvp;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    instance-of v0, p1, Llvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Llvp;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    iget p1, p1, Llvp;->d:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, p1, Llvp;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    cmp-long v0, v2, v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1d
    iget p0, p0, Llvp;->d:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget v1, p0, Llvp;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Llvp;->d:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Llvp;->b:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p0, Llvp;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "%d_%dx%d_%d"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    const-string v1, "BurstMemoryImage["

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    const-string p0, "]"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v1, p0, Llvp;->e:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
