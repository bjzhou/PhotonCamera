.class final Lgwf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Lsuu;

.field final synthetic b:Lpog;

.field final synthetic c:Llxn;

.field final synthetic d:Lgwg;


# direct methods
.method public constructor <init>(Lgwg;Lsuu;Lpog;Llxn;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgwf;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lgwf;->c:Llxn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p2, p0, Lgwf;->a:Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lgwf;->d:Lgwg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

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

    :goto_1
    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "Failed to take snapshot."

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

    nop

    :goto_9
    sget-object v0, Lgwg;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lgwf;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const/16 v2, 0x361

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgwf;->a:Lsuu;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lgwf;->a:Lsuu;

    nop

    nop

    iget-object v1, p0, Lgwf;->d:Lgwg;

    nop

    iget-object v1, v1, Lgwg;->b:Lgwh;

    nop

    sget-object v2, Lpcg;->a:Lpcg;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lgwf;->b:Lpog;

    nop

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0x64

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    nop

    nop

    invoke-virtual {v1, v4, v2, v3}, Lgwh;->a([BLpcg;Lpog;)Lgrd;

    move-result-object v1

    nop

    nop

    new-instance v2, Lpck;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    nop

    nop

    invoke-direct {v2, v3, p1}, Lpck;-><init>(II)V

    iput-object v2, v1, Lgrd;->g:Lpck;

    nop

    nop

    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lgrd;->c(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lgwf;->d:Lgwg;

    nop

    nop

    iget-wide v4, p1, Lgwg;->c:J

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    invoke-virtual {v1, v2, v3}, Lgrd;->b(J)V

    iget-object p1, p0, Lgwf;->c:Llxn;

    nop

    nop

    iput-object p1, v1, Lgrd;->j:Llxn;

    nop

    invoke-virtual {v1}, Lgrd;->a()Lgre;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method
