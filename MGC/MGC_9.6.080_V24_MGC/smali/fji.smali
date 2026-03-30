.class public final Lfji;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjj;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lfkm;Lfmm;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lfji;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfji;->b:Ljava/lang/Object;

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

    :goto_3
    iput-object p2, p0, Lfji;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Lfmm;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfji;->b:Ljava/lang/Object;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfji;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput p3, p0, Lfji;->c:I

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

    nop

    nop
.end method


# virtual methods
.method public final a(Lfjf;)I
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x9

    nop

    goto/32 :goto_12

    nop

    nop

    nop

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
    goto/32 :goto_29

    nop

    nop

    :goto_5
    return p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfji;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lfqi;->b()V

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfji;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lfji;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_0
    iget-object v0, p0, Lfji;->a:Ljava/lang/Object;

    nop

    iget-object v1, p0, Lfji;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lfmm;

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0, v1}, Lfjf;->c(Ljava/io/InputStream;Lfmm;)I

    move-result p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    return p1

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

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x15

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

    :goto_11
    check-cast p0, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lfkm;->c()Landroid/os/ParcelFileDescriptor;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Lftj;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_b

    nop

    nop

    :goto_16
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lfji;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    return p1

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_2
    :try_start_1
    new-instance v0, Lfqi;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/io/FileInputStream;

    nop

    iget-object v2, p0, Lfji;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Lfkm;

    nop

    nop

    nop

    invoke-virtual {v2}, Lfkm;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    nop

    nop

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lfji;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Lfmm;

    nop

    invoke-direct {v0, v1, v2}, Lfqi;-><init>(Ljava/io/InputStream;Lfmm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lfji;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lfmm;

    nop

    nop

    invoke-interface {p1, v0, v1}, Lfjf;->c(Ljava/io/InputStream;Lfmm;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lfkm;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lfji;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_23
    check-cast p0, Lfkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Lftj;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    throw p1

    nop

    nop

    nop

    :goto_26
    :try_start_3
    iget-object v0, p0, Lfji;->a:Ljava/lang/Object;

    nop

    nop

    iget-object v1, p0, Lfji;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lfmm;

    nop

    check-cast v0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0, v1}, Lfjf;->d(Ljava/nio/ByteBuffer;Lfmm;)I

    move-result p1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_28
    invoke-virtual {p0}, Lfkm;->c()Landroid/os/ParcelFileDescriptor;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v0, p0, Lfji;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lfqi;->b()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lfji;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method
