.class public final Lkdr;
.super Lkdw;


# static fields
.field public static final synthetic a:I

.field private static final f:[B

.field private static final g:[B


# instance fields
.field private final h:Lkdi;

.field private final i:Lcom/google/android/libraries/camera/exif/ExifInterface;

.field private j:S

.field private k:S

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lkdr;->f:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lkdr;->g:[B

    return-void

    :array_0
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x49t
        0x43t
        0x43t
        0x5ft
        0x50t
        0x52t
        0x4ft
        0x46t
        0x49t
        0x4ct
        0x45t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lkdi;)V
    .locals 1

    new-instance v0, Lkdg;

    invoke-direct {v0}, Lkdg;-><init>()V

    invoke-direct {p0, p1, v0}, Lkdw;-><init>(Ljava/io/OutputStream;Lkdg;)V

    const/4 p1, 0x0

    iput-short p1, p0, Lkdr;->j:S

    iput-short p1, p0, Lkdr;->k:S

    iput p1, p0, Lkdr;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkdr;->m:Z

    iput-object p2, p0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iput-object p3, p0, Lkdr;->h:Lkdi;

    return-void
.end method

.method private static k(IS)V
    .locals 3

    if-ltz p0, :cond_0

    return-void

    :cond_0
    shr-int/lit8 p0, p1, 0x8

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    and-int/lit16 p0, p1, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "Negative section length: section length read was 0x%02X%02X"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static l(Lkdq;Lkdu;)V
    .locals 5

    iget-short v0, p0, Lkdq;->b:S

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    iget v0, p0, Lkdq;->d:I

    :goto_0
    if-ge v1, v0, :cond_5

    iget-short v2, p0, Lkdq;->b:S

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lkdq;->c(S)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get RATIONAL value from "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget-object v2, p0, Lkdq;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, [Lkac;

    aget-object v2, v2, v1

    iget-wide v3, v2, Lkac;->a:J

    long-to-int v4, v3

    invoke-virtual {p1, v4}, Lkdu;->a(I)V

    iget-wide v2, v2, Lkac;->b:J

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Lkdu;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lkdq;->d:I

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lkdq;->b(I)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Lkdu;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lkdq;->d:I

    :goto_3
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lkdq;->b(I)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-short v2, v3

    invoke-virtual {p1, v2}, Lkdu;->b(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lkdq;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, [B

    array-length v2, v0

    iget p0, p0, Lkdq;->d:I

    if-ne v2, p0, :cond_2

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    aput-byte v1, v0, v2

    invoke-virtual {p1, v0}, Lkdu;->write([B)V

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Lkdu;->write([B)V

    invoke-virtual {p1, v1}, Lkdu;->write(I)V

    return-void

    :pswitch_5
    iget v2, p0, Lkdq;->d:I

    new-array v3, v2, [B

    const/4 v4, 0x7

    if-eq v0, v4, :cond_4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v0}, Lkdq;->c(S)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get BYTE value from "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_4
    iget-object p0, p0, Lkdq;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v3}, Lkdu;->write([B)V

    return-void

    :cond_5
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final m(Lkdt;I)I
    .locals 5

    invoke-virtual {p0}, Lkdt;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lkdt;->d()[Lkdq;

    move-result-object p0

    array-length v1, p0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lkdq;->a()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    iput p1, v2, Lkdq;->g:I

    invoke-virtual {v2}, Lkdq;->a()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static final n(Lkdt;Lkdu;)V
    .locals 7

    invoke-virtual {p0}, Lkdt;->d()[Lkdq;

    move-result-object v0

    array-length v1, v0

    int-to-short v2, v1

    invoke-virtual {p1, v2}, Lkdu;->b(S)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-short v6, v5, Lkdq;->a:S

    invoke-virtual {p1, v6}, Lkdu;->b(S)V

    iget-short v6, v5, Lkdq;->b:S

    invoke-virtual {p1, v6}, Lkdu;->b(S)V

    iget v6, v5, Lkdq;->d:I

    invoke-virtual {p1, v6}, Lkdu;->a(I)V

    invoke-virtual {v5}, Lkdq;->a()I

    move-result v6

    if-le v6, v4, :cond_1

    iget v4, v5, Lkdq;->g:I

    invoke-virtual {p1, v4}, Lkdu;->a(I)V

    goto :goto_2

    :cond_1
    invoke-static {v5, p1}, Lkdr;->l(Lkdq;Lkdu;)V

    invoke-virtual {v5}, Lkdq;->a()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {p1, v2}, Lkdu;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget p0, p0, Lkdt;->c:I

    invoke-virtual {p1, p0}, Lkdu;->a(I)V

    array-length p0, v0

    :goto_3
    if-ge v2, p0, :cond_5

    aget-object v1, v0, v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkdq;->a()I

    move-result v3

    if-le v3, v4, :cond_4

    invoke-static {v1, p1}, Lkdr;->l(Lkdq;Lkdu;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v0, v1}, Lkdw;->b(I)S

    move-result v1

    iput-short v1, v0, Lkdr;->k:S

    int-to-char v1, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lkdr;->l:I

    iget-short v2, v0, Lkdr;->j:S

    invoke-static {v1, v2}, Lkdr;->k(IS)V

    iget v1, v0, Lkdr;->l:I

    invoke-virtual {v0, v1}, Lkdw;->j(I)V

    return v6

    :pswitch_0
    invoke-super/range {p0 .. p0}, Lkdw;->d()V

    iget-object v1, v0, Lkdw;->b:Lkdg;

    iget-object v2, v0, Lkdw;->c:Ljava/io/OutputStream;

    invoke-virtual {v1}, Lkdg;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lkdg;->c(Ljava/io/OutputStream;I)V

    const/4 v1, -0x1

    iput v1, v0, Lkdw;->e:I

    return v4

    :pswitch_1
    invoke-virtual {v0, v3}, Lkdw;->b(I)S

    move-result v3

    iput-short v3, v0, Lkdr;->k:S

    int-to-char v3, v3

    add-int/lit8 v3, v3, -0x2

    iput v3, v0, Lkdr;->l:I

    iget-short v5, v0, Lkdr;->j:S

    invoke-static {v3, v5}, Lkdr;->k(IS)V

    iget v3, v0, Lkdr;->l:I

    if-ge v3, v1, :cond_0

    iget-short v1, v0, Lkdr;->j:S

    invoke-virtual {v0, v1}, Lkdw;->h(S)V

    iget-short v1, v0, Lkdr;->k:S

    invoke-virtual {v0, v1}, Lkdw;->h(S)V

    iget v1, v0, Lkdr;->l:I

    invoke-virtual {v0, v1}, Lkdw;->i(I)V

    return v6

    :cond_0
    :pswitch_2
    invoke-super {v0, v4, v2}, Lkdw;->c(II)V

    invoke-super/range {p0 .. p0}, Lkdw;->d()V

    iget-object v1, v0, Lkdw;->b:Lkdg;

    iget v2, v1, Lkdg;->b:I

    add-int/lit8 v3, v2, 0x4

    iget v5, v1, Lkdg;->c:I

    if-gt v3, v5, :cond_3

    new-array v3, v4, [B

    iget-object v5, v1, Lkdg;->a:[B

    invoke-static {v5, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lkdg;->b:I

    add-int/2addr v2, v4

    iput v2, v1, Lkdg;->b:I

    iget v1, v0, Lkdr;->l:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lkdr;->l:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-byte v2, v3, v1

    sget-object v5, Lkdr;->f:[B

    aget-byte v5, v5, v1

    if-eq v2, v5, :cond_1

    iget-short v1, v0, Lkdr;->j:S

    invoke-virtual {v0, v1}, Lkdw;->h(S)V

    iget-short v1, v0, Lkdr;->k:S

    invoke-virtual {v0, v1}, Lkdw;->h(S)V

    invoke-virtual {v0, v3}, Lkdw;->g([B)V

    iget v1, v0, Lkdr;->l:I

    invoke-virtual {v0, v1}, Lkdw;->i(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, v0, Lkdr;->l:I

    invoke-virtual {v0, v1}, Lkdw;->j(I)V

    :goto_1
    return v6

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Byte queue is too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    invoke-virtual {v0, v6}, Lkdw;->b(I)S

    move-result v7

    iput-short v7, v0, Lkdr;->j:S

    and-int/lit16 v8, v7, -0x100

    const/16 v9, -0x100

    const/16 v10, 0x8

    if-ne v8, v9, :cond_34

    const/16 v8, -0x1f

    const/16 v9, -0x28

    if-eq v7, v9, :cond_c

    const/16 v11, -0x27

    if-ne v7, v11, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-static {v7}, Lkfg;->C(S)Z

    move-result v2

    const/16 v9, -0x1e

    if-eqz v2, :cond_7

    iget-boolean v1, v0, Lkdr;->m:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget v1, v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bz:I

    if-ne v1, v3, :cond_5

    sget-object v1, Loiu;->a:[C

    goto :goto_2

    :cond_5
    sget-object v1, Loiv;->a:[C

    :goto_2
    const-string v2, "ICC profile does not fit in one marker segment!"

    invoke-static {v5, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-virtual {v0, v9}, Lkdw;->h(S)V

    array-length v2, v1

    add-int/2addr v2, v2

    add-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lkdw;->h(S)V

    sget-object v2, Lkdr;->g:[B

    invoke-virtual {v0, v2}, Lkdw;->g([B)V

    const/16 v2, 0x101

    invoke-virtual {v0, v2}, Lkdw;->h(S)V

    :goto_3
    array-length v2, v1

    if-ge v6, v2, :cond_6

    aget-char v2, v1, v6

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lkdw;->h(S)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    iget-short v1, v0, Lkdr;->j:S

    invoke-virtual {v0, v1}, Lkdw;->h(S)V

    return v4

    :cond_7
    iget-object v2, v0, Lkdr;->h:Lkdi;

    if-eqz v2, :cond_9

    if-eq v7, v8, :cond_8

    goto :goto_4

    :cond_8
    return v3

    :cond_9
    :goto_4
    if-ne v7, v9, :cond_b

    iget-object v2, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget v2, v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->bz:I

    if-nez v2, :cond_a

    iput-boolean v6, v0, Lkdr;->m:Z

    goto :goto_5

    :cond_a
    return v1

    :cond_b
    :goto_5
    invoke-virtual {v0, v7}, Lkdw;->h(S)V

    :pswitch_4
    invoke-virtual {v0, v5}, Lkdw;->b(I)S

    move-result v1

    iput-short v1, v0, Lkdr;->k:S

    invoke-virtual {v0, v1}, Lkdw;->h(S)V

    iget-short v1, v0, Lkdr;->k:S

    int-to-char v1, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lkdr;->l:I

    iget-short v2, v0, Lkdr;->j:S

    invoke-static {v1, v2}, Lkdr;->k(IS)V

    iget v1, v0, Lkdr;->l:I

    invoke-virtual {v0, v1}, Lkdw;->i(I)V

    return v6

    :cond_c
    :goto_6
    invoke-virtual {v0, v7}, Lkdw;->h(S)V

    iget-short v1, v0, Lkdr;->j:S

    if-ne v1, v9, :cond_33

    iget-object v1, v0, Lkdr;->h:Lkdi;

    if-eqz v1, :cond_33

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lkdi;->c()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkdq;

    iget-object v12, v11, Lkdq;->f:Ljava/lang/Object;

    if-nez v12, :cond_d

    iget-short v12, v11, Lkdq;->a:S

    invoke-static {v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->t(S)Z

    move-result v12

    if-nez v12, :cond_d

    iget-short v12, v11, Lkdq;->a:S

    iget v13, v11, Lkdq;->e:I

    invoke-virtual {v1, v12, v13}, Lkdi;->h(SI)Z

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    iget-object v9, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v9, v6}, Lkdi;->b(I)Lkdt;

    move-result-object v9

    if-nez v9, :cond_f

    new-instance v9, Lkdt;

    invoke-direct {v9, v6}, Lkdt;-><init>(I)V

    iget-object v11, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v11, v9}, Lkdi;->d(Lkdt;)V

    :cond_f
    iget-object v11, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v12, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    invoke-virtual {v11, v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lkdq;

    move-result-object v11

    const-string v12, "No definition for crucial exif tag: "

    if-eqz v11, :cond_32

    invoke-virtual {v9, v11}, Lkdt;->e(Lkdq;)V

    iget-object v11, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v11, v3}, Lkdi;->b(I)Lkdt;

    move-result-object v11

    if-nez v11, :cond_10

    new-instance v11, Lkdt;

    invoke-direct {v11, v3}, Lkdt;-><init>(I)V

    iget-object v13, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v13, v11}, Lkdi;->d(Lkdt;)V

    :cond_10
    iget-object v13, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v13, v4}, Lkdi;->b(I)Lkdt;

    move-result-object v13

    if-eqz v13, :cond_12

    iget-object v13, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    invoke-virtual {v13, v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lkdq;

    move-result-object v13

    if-eqz v13, :cond_11

    invoke-virtual {v9, v13}, Lkdt;->e(Lkdq;)V

    goto :goto_8

    :cond_11
    new-instance v1, Ljava/io/IOException;

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_8
    iget-object v9, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v9, v2}, Lkdi;->b(I)Lkdt;

    move-result-object v9

    if-eqz v9, :cond_14

    iget-object v9, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    invoke-virtual {v9, v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lkdq;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-virtual {v11, v9}, Lkdt;->e(Lkdq;)V

    goto :goto_9

    :cond_13
    new-instance v1, Ljava/io/IOException;

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_9
    iget-object v9, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v9, v5}, Lkdi;->b(I)Lkdt;

    move-result-object v9

    iget-object v11, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v11}, Lkdi;->f()Z

    move-result v11

    if-eqz v11, :cond_18

    if-nez v9, :cond_15

    new-instance v9, Lkdt;

    invoke-direct {v9, v5}, Lkdt;-><init>(I)V

    iget-object v11, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v11, v9}, Lkdi;->d(Lkdt;)V

    :cond_15
    iget-object v11, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    invoke-virtual {v11, v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lkdq;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v9, v11}, Lkdt;->e(Lkdq;)V

    iget-object v11, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    invoke-virtual {v11, v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lkdq;

    move-result-object v11

    if-eqz v11, :cond_16

    iget-object v12, v0, Lkdr;->h:Lkdi;

    iget-object v12, v12, Lkdi;->b:[B

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v12, v12

    invoke-virtual {v11, v12}, Lkdq;->g(I)Z

    invoke-virtual {v9, v11}, Lkdt;->e(Lkdq;)V

    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    invoke-static {v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v11

    invoke-virtual {v9, v11}, Lkdt;->c(S)V

    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    invoke-static {v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v11

    invoke-virtual {v9, v11}, Lkdt;->c(S)V

    goto/16 :goto_b

    :cond_16
    new-instance v1, Ljava/io/IOException;

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    new-instance v1, Ljava/io/IOException;

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    iget-object v11, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v11}, Lkdi;->g()Z

    move-result v11

    if-eqz v11, :cond_1d

    if-nez v9, :cond_19

    new-instance v9, Lkdt;

    invoke-direct {v9, v5}, Lkdt;-><init>(I)V

    iget-object v11, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v11, v9}, Lkdi;->d(Lkdt;)V

    :cond_19
    iget-object v11, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v11}, Lkdi;->a()I

    move-result v11

    iget-object v13, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    invoke-virtual {v13, v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lkdq;

    move-result-object v13

    if-eqz v13, :cond_1c

    iget-object v14, v0, Lkdr;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    sget v15, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    invoke-virtual {v14, v15}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lkdq;

    move-result-object v14

    if-eqz v14, :cond_1b

    new-array v11, v11, [J

    const/4 v12, 0x0

    :goto_a
    iget-object v15, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v15}, Lkdi;->a()I

    move-result v15

    if-ge v12, v15, :cond_1a

    iget-object v15, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v15, v12}, Lkdi;->i(I)[B

    move-result-object v15

    array-length v15, v15

    int-to-long v4, v15

    aput-wide v4, v11, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    goto :goto_a

    :cond_1a
    invoke-virtual {v14, v11}, Lkdq;->k([J)Z

    invoke-virtual {v9, v13}, Lkdt;->e(Lkdq;)V

    invoke-virtual {v9, v14}, Lkdt;->e(Lkdq;)V

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    invoke-static {v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v4

    invoke-virtual {v9, v4}, Lkdt;->c(S)V

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    invoke-static {v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v4

    invoke-virtual {v9, v4}, Lkdt;->c(S)V

    goto :goto_b

    :cond_1b
    new-instance v1, Ljava/io/IOException;

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    new-instance v1, Ljava/io/IOException;

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    if-eqz v9, :cond_1e

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    invoke-static {v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v4

    invoke-virtual {v9, v4}, Lkdt;->c(S)V

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    invoke-static {v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v4

    invoke-virtual {v9, v4}, Lkdt;->c(S)V

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    invoke-static {v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v4

    invoke-virtual {v9, v4}, Lkdt;->c(S)V

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    invoke-static {v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v4

    invoke-virtual {v9, v4}, Lkdt;->c(S)V

    :cond_1e
    :goto_b
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v5}, Lkdi;->c()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v5}, Lkdi;->f()Z

    move-result v5

    if-eqz v5, :cond_1f

    new-instance v5, Lkdq;

    const/16 v18, 0x0

    const/16 v19, 0x1

    iget-object v9, v0, Lkdr;->h:Lkdi;

    iget-object v9, v9, Lkdi;->b:[B

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v9, v9

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v5

    move/from16 v20, v9

    invoke-direct/range {v17 .. v22}, Lkdq;-><init>(SSIIZ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    sget-object v5, Lamx;->o:Lamx;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v5, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v5, v6}, Lkdi;->b(I)Lkdt;

    move-result-object v5

    if-nez v5, :cond_20

    const/16 v9, 0x8

    goto/16 :goto_d

    :cond_20
    invoke-static {v5, v10}, Lkdr;->m(Lkdt;I)I

    move-result v9

    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    invoke-static {v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v11

    invoke-virtual {v5, v11}, Lkdt;->b(S)Lkdq;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v9}, Lkdq;->g(I)Z

    iget-object v11, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v11, v3}, Lkdi;->b(I)Lkdt;

    move-result-object v11

    if-eqz v11, :cond_27

    invoke-static {v11, v9}, Lkdr;->m(Lkdt;I)I

    move-result v9

    iget-object v12, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v12, v2}, Lkdi;->b(I)Lkdt;

    move-result-object v12

    if-eqz v12, :cond_21

    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    invoke-static {v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v13

    invoke-virtual {v11, v13}, Lkdt;->b(S)Lkdq;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v9}, Lkdq;->g(I)Z

    invoke-static {v12, v9}, Lkdr;->m(Lkdt;I)I

    move-result v9

    :cond_21
    iget-object v11, v0, Lkdr;->h:Lkdi;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lkdi;->b(I)Lkdt;

    move-result-object v11

    if-eqz v11, :cond_22

    sget v12, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    invoke-static {v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v12

    invoke-virtual {v5, v12}, Lkdt;->b(S)Lkdq;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12, v9}, Lkdq;->g(I)Z

    invoke-static {v11, v9}, Lkdr;->m(Lkdt;I)I

    move-result v9

    :cond_22
    iget-object v11, v0, Lkdr;->h:Lkdi;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lkdi;->b(I)Lkdt;

    move-result-object v11

    if-eqz v11, :cond_23

    iput v9, v5, Lkdt;->c:I

    invoke-static {v11, v9}, Lkdr;->m(Lkdt;I)I

    move-result v5

    move v9, v5

    :cond_23
    iget-object v5, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v5}, Lkdi;->f()Z

    move-result v5

    if-eqz v5, :cond_25

    if-eqz v11, :cond_24

    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    invoke-static {v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v5

    invoke-virtual {v11, v5}, Lkdt;->b(S)Lkdq;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v9}, Lkdq;->g(I)Z

    :cond_24
    iget-object v5, v0, Lkdr;->h:Lkdi;

    iget-object v5, v5, Lkdi;->b:[B

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v5

    add-int/2addr v9, v5

    goto :goto_d

    :cond_25
    iget-object v5, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v5}, Lkdi;->g()Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v5}, Lkdi;->a()I

    move-result v5

    new-array v5, v5, [J

    const/4 v12, 0x0

    :goto_c
    iget-object v13, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v13}, Lkdi;->a()I

    move-result v13

    if-ge v12, v13, :cond_26

    int-to-long v13, v9

    aput-wide v13, v5, v12

    iget-object v13, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v13, v12}, Lkdi;->i(I)[B

    move-result-object v13

    array-length v13, v13

    add-int/2addr v9, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_26
    if-eqz v11, :cond_27

    sget v12, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    invoke-static {v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v12

    invoke-virtual {v11, v12}, Lkdt;->b(S)Lkdq;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v5}, Lkdq;->k([J)Z

    :cond_27
    :goto_d
    const/4 v5, 0x0

    :goto_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    const v12, 0xffff

    if-ge v5, v11, :cond_2a

    if-le v9, v12, :cond_2a

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkdq;

    iget-short v12, v11, Lkdq;->a:S

    const-string v13, "CAM_ExifTransFSM"

    const-string v14, " as Exif data exceeds max size 65535!"

    if-nez v12, :cond_28

    iget-object v12, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v12}, Lkdi;->e()V

    iget-object v12, v12, Lkdi;->a:[Lkdt;

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput-object v15, v12, v16

    invoke-virtual {v11}, Lkdq;->a()I

    move-result v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed thumbnail with size "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lkdq;->a()I

    move-result v2

    sub-int/2addr v9, v2

    goto :goto_f

    :cond_28
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    invoke-static {v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v2

    if-eq v12, v2, :cond_29

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    invoke-static {v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v2

    if-eq v12, v2, :cond_29

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    invoke-static {v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v2

    if-eq v12, v2, :cond_29

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    invoke-static {v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v2

    if-eq v12, v2, :cond_29

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    invoke-static {v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v2

    if-eq v12, v2, :cond_29

    iget-object v2, v0, Lkdr;->h:Lkdi;

    iget v15, v11, Lkdq;->e:I

    invoke-virtual {v2, v12, v15}, Lkdi;->h(SI)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-short v2, v11, Lkdq;->a:S

    invoke-virtual {v11}, Lkdq;->a()I

    move-result v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed tag "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of size "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lkdq;->a()I

    move-result v2

    sub-int/2addr v9, v2

    :cond_29
    :goto_f
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    goto/16 :goto_e

    :cond_2a
    if-gt v9, v12, :cond_31

    invoke-virtual {v0, v8}, Lkdw;->h(S)V

    add-int/2addr v9, v10

    int-to-short v2, v9

    invoke-virtual {v0, v2}, Lkdw;->h(S)V

    sget-object v2, Lkdr;->f:[B

    invoke-virtual {v0, v2}, Lkdw;->g([B)V

    iget-object v2, v1, Lkdi;->d:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2b

    const/16 v2, 0x4d4d

    invoke-virtual {v0, v2}, Lkdw;->h(S)V

    goto :goto_10

    :cond_2b
    const/16 v2, 0x4949

    invoke-virtual {v0, v2}, Lkdw;->h(S)V

    :goto_10
    new-instance v2, Lkdu;

    iget-object v3, v0, Lkdw;->c:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Lkdu;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, v1, Lkdi;->d:Ljava/nio/ByteOrder;

    iget-object v4, v2, Lkdu;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lkdu;->b(S)V

    invoke-virtual {v2, v10}, Lkdu;->a(I)V

    iget-object v3, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v3, v6}, Lkdi;->b(I)Lkdt;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lkdr;->n(Lkdt;Lkdu;)V

    iget-object v3, v0, Lkdr;->h:Lkdi;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lkdi;->b(I)Lkdt;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lkdr;->n(Lkdt;Lkdu;)V

    iget-object v3, v0, Lkdr;->h:Lkdi;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lkdi;->b(I)Lkdt;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-static {v3, v2}, Lkdr;->n(Lkdt;Lkdu;)V

    :cond_2c
    iget-object v3, v0, Lkdr;->h:Lkdi;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lkdi;->b(I)Lkdt;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-static {v3, v2}, Lkdr;->n(Lkdt;Lkdu;)V

    :cond_2d
    iget-object v3, v0, Lkdr;->h:Lkdi;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lkdi;->b(I)Lkdt;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-static {v3, v2}, Lkdr;->n(Lkdt;Lkdu;)V

    :cond_2e
    iget-object v3, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v3}, Lkdi;->f()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lkdr;->h:Lkdi;

    iget-object v3, v3, Lkdi;->b:[B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lkdu;->write([B)V

    goto :goto_12

    :cond_2f
    iget-object v3, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v3}, Lkdi;->g()Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x0

    :goto_11
    iget-object v4, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v4}, Lkdi;->a()I

    move-result v4

    if-ge v3, v4, :cond_30

    iget-object v4, v0, Lkdr;->h:Lkdi;

    invoke-virtual {v4, v3}, Lkdi;->i(I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lkdu;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_30
    :goto_12
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_33

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkdq;

    invoke-virtual {v1, v4}, Lkdi;->j(Lkdq;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_31
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exif header is too large (>65535), even after pruning non-essential tags!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    new-instance v1, Ljava/io/IOException;

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    return v6

    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    shr-int/lit8 v3, v7, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-short v3, v0, Lkdr;->j:S

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Unexpected section marker: %02X%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :goto_14
    throw v1

    :goto_15
    goto :goto_14

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
