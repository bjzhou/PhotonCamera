.class public final Lfoo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjd;


# instance fields
.field private final a:Lfmm;


# direct methods
.method public constructor <init>(Lfmm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfoo;->a:Lfmm;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lfjp;)Z
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v1, [B

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfoo;->a:Lfmm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_5
    iget-object p3, p0, Lfoo;->a:Lfmm;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    move-object v0, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto :goto_9

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    :catch_2
    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p3, v0, v1}, Lfmm;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :catch_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    const/high16 v0, 0x10000

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p3}, Lfmm;->c(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    move-object v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p3, [B

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    nop

    nop

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1b
    :try_start_4
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p2

    nop

    nop

    nop

    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    if-eq p2, v0, :cond_3

    nop

    invoke-virtual {v2, p3, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1b

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
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

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p3}, Lfmm;->c(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1f
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lfoo;->a:Lfmm;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_c

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop
.end method
