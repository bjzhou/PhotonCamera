.class public final Lfpi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjr;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p1}, Lfpg;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lfpi;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfpi;->b:Ljava/lang/Object;

    nop

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

    :goto_5
    new-instance p1, Lfpg;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfpi;->b:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lfpi;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILfjp;)Lflx;
    .locals 8

    goto/32 :goto_38

    nop

    nop

    :goto_0
    iget-object v0, v2, Lfpx;->g:Lfmm;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lfix;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    new-instance v3, Lfqe;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4
    move v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-static {p1}, Lftj;->a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfpi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lfpi;->b:Ljava/lang/Object;

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

    :goto_c
    move-object v6, p4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    :goto_f
    goto/32 :goto_35

    nop

    :goto_10
    move v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_11
    check-cast p1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {v2 .. v7}, Lfpx;->a(Lfqf;IILfjp;Lfpw;)Lflx;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    iget-object p0, v2, Lfpx;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

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

    :goto_17
    move v4, p2

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

    :goto_18
    invoke-direct {v3, p1, p0, v0, v1}, Lfqe;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;Lfmm;I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v2, Lfpx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    sget-object v7, Lfpx;->e:Lfpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lfpi;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Lfix;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, p2, p3, p4}, Liof;->Q(Landroid/graphics/ImageDecoder$Source;IILfjp;)Lflx;

    move-result-object p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Lftj;->a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v3, p1, p0, v0, v1}, Lfqe;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lfmm;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, v2, Lfpx;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_29
    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v7, Lfpx;->e:Lfpw;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p1, p2, p3, p4}, Lfpg;->c(Landroid/graphics/ImageDecoder$Source;IILfjp;)Lflx;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v0, p0, Lfpi;->a:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2e
    check-cast p1, Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v3, Lfqe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    :goto_37
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_38
    const v0, 0xa

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lfpi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, p1, p2, p3, p4}, Lfpg;->c(Landroid/graphics/ImageDecoder$Source;IILfjp;)Lflx;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v1, 0x2

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_3c
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3d
    if-lez v0, :cond_3

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    :goto_3e
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p0, p2, p3, p4}, Liof;->Q(Landroid/graphics/ImageDecoder$Source;IILfjp;)Lflx;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p0, Lfpg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual/range {v2 .. v7}, Lfpx;->a(Lfqf;IILfjp;Lfpw;)Lflx;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_43
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_11

    nop

    nop

    :goto_45
    check-cast v2, Lfpx;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_47
    if-ne v0, v2, :cond_5

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, v2, Lfpx;->g:Lfmm;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_49
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v1, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Lfpg;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object v6, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4e
    invoke-static {p1, p0}, Lfqg;->g(Landroid/graphics/Bitmap;Lfmf;)Lfqg;

    move-result-object p0

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lfpi;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_51
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;Lfjp;)Z
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    if-lez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    const-string p0, "HUAWEI"

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Liof;->R(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_8
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    :goto_c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lfpi;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lfpi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lfic;->b(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1e

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_12
    const-string p0, "HONOR"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p2, p0, Lfpi;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    :goto_16
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    check-cast p1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p2, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/32 v1, 0x20000000

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_26
    if-ne p2, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return p0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    check-cast p0, Lfmm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    :goto_2c
    check-cast p0, Liof;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return v0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_31
    if-ne p2, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p1, Lfix;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    if-ne p2, v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_37
    if-ne p2, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p0, Liof;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_39
    if-nez p2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_9
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_f

    nop

    nop

    :goto_3d
    invoke-static {}, Lfkm;->d()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast p1, Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3f
    return p0

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p2, p1, p0}, Lfic;->e(Ljava/util/List;Ljava/io/InputStream;Lfmm;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_42
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_43
    if-ne p2, v1, :cond_a

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_45
    cmp-long p0, p0, v1

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

    :goto_46
    invoke-static {p0}, Liof;->R(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_47
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop
.end method
