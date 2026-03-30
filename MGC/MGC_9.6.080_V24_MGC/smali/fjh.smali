.class public final Lfjh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjk;


# instance fields
.field final synthetic a:Lfkm;

.field final synthetic b:Lfmm;


# direct methods
.method public constructor <init>(Lfkm;Lfmm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfjh;->b:Lfmm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfjh;->a:Lfkm;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfjf;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lfqi;->b()V

    goto/32 :goto_15

    nop

    nop

    :goto_1
    const v0, 0x6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    new-instance v0, Lfqi;

    nop

    nop

    nop

    new-instance v1, Ljava/io/FileInputStream;

    nop

    nop

    iget-object v2, p0, Lfjh;->a:Lfkm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lfkm;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lfjh;->b:Lfmm;

    nop

    invoke-direct {v0, v1, v2}, Lfqi;-><init>(Ljava/io/InputStream;Lfmm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, v0}, Lfjf;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lfjh;->a:Lfkm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lfqi;->b()V

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lfkm;->c()Landroid/os/ParcelFileDescriptor;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lfkm;->c()Landroid/os/ParcelFileDescriptor;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lfjh;->a:Lfkm;

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
