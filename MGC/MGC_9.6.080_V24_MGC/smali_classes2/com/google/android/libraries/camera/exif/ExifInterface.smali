.class public Lcom/google/android/libraries/camera/exif/ExifInterface;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpfm;


# static fields
.field public static final A:I

.field public static final B:I

.field public static final C:I

.field public static final D:I

.field public static final E:I

.field public static final F:I

.field public static final G:I

.field public static final H:I

.field public static final I:I

.field public static final J:I

.field public static final K:I

.field public static final L:I

.field public static final M:I

.field public static final N:I

.field public static final O:I

.field public static final P:I

.field public static final Q:I

.field public static final R:I

.field public static final S:I

.field public static final T:I

.field public static final TAG_SOFTWARE:I

.field public static final U:I

.field public static final V:I

.field public static final W:I

.field public static final X:I

.field public static final Y:I

.field public static final Z:I

.field public static final a:I

.field public static final aA:I

.field public static final aB:I

.field public static final aC:I

.field public static final aD:I

.field public static final aE:I

.field public static final aF:I

.field public static final aG:I

.field public static final aH:I

.field public static final aI:I

.field public static final aJ:I

.field public static final aK:I

.field public static final aL:I

.field public static final aM:I

.field public static final aN:I

.field public static final aO:I

.field public static final aP:I

.field public static final aQ:I

.field public static final aR:I

.field public static final aS:I

.field public static final aT:I

.field public static final aU:I

.field public static final aV:I

.field public static final aW:I

.field public static final aX:I

.field public static final aY:I

.field public static final aZ:I

.field public static final aa:I

.field public static final ab:I

.field public static final ac:I

.field public static final ad:I

.field public static final ae:I

.field public static final af:I

.field public static final ag:I

.field public static final ah:I

.field public static final ai:I

.field public static final aj:I

.field public static final ak:I

.field public static final al:I

.field public static final am:I

.field public static final an:I

.field public static final ao:I

.field public static final ap:I

.field public static final aq:I

.field public static final ar:I

.field public static final as:I

.field public static final at:I

.field public static final au:I

.field public static final av:I

.field public static final aw:I

.field public static final ax:I

.field public static final ay:I

.field public static final az:I

.field public static final b:I

.field private static final bE:Ljava/util/HashSet;

.field private static final bF:Ljava/lang/Long;

.field public static final ba:I

.field public static final bb:I

.field public static final bc:I

.field public static final bd:I

.field public static final be:I

.field public static final bf:I

.field public static final bg:I

.field public static final bh:I

.field public static final bi:I

.field public static final bj:I

.field public static final bk:I

.field public static final bl:I

.field public static final bm:I

.field public static final bn:I

.field public static final bo:I

.field public static final bp:I

.field public static final bq:I

.field public static final br:I

.field public static final bs:I

.field public static final bt:I

.field public static final bu:I

.field public static final bv:I

.field protected static final bw:Ljava/util/HashSet;

.field public static final bx:Ljava/lang/Long;

.field public static final by:Ljava/nio/ByteOrder;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# instance fields
.field public bA:Ljava/lang/String;

.field public bB:Lpfl;

.field public final bC:Ljava/text/DateFormat;

.field public final bD:Ljava/util/Calendar;

.field private final bG:Ljava/text/DateFormat;

.field private bH:Landroid/util/SparseIntArray;

.field public bz:Ljava/lang/String;


# direct methods
.method private final 7dd154808b1c676d3d63f3a63e9edabfm(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    :goto_0
    if-ne v1, v2, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    :try_start_0
    new-instance p2, Ljava/lang/String;

    nop

    iget-object v0, p1, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v0, Lexq;

    nop

    nop

    nop

    invoke-static {v0}, Lpuf;->g(Lexq;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    nop

    nop

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/lang/String;

    nop

    nop

    iget-object p1, p1, Lrsu;->b:Ljava/lang/Object;

    nop

    check-cast p1, Lexq;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpuf;->g(Lexq;)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bz:Ljava/lang/String;

    nop

    iput-object v0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const-string p2, "Invalid exif format : "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_5
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    throw p1

    nop

    :goto_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_8
    const-string p2, "Could not parse XMP data."

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    const-string v3, "CAM_ExifReader"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    :goto_12
    goto/16 :goto_25

    nop

    nop

    :goto_13
    goto/32 :goto_2e

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_1
    iget-object v1, v0, Lpfs;->e:Lpft;

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    goto :goto_19

    nop

    nop

    nop

    :cond_5
    invoke-virtual {v1, v4}, Lpft;->b(I)J

    move-result-wide v1

    nop

    long-to-int v4, v1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array v1, v4, [B

    nop

    nop

    invoke-virtual {v0, v1}, Lpfs;->b([B)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-ne v4, v2, :cond_8

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lpfs;->d:Lpfr;

    nop

    nop

    nop

    nop

    iget v2, v2, Lpfr;->a:I

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lpfl;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    if-ge v2, v3, :cond_6

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lpfl;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    nop

    nop

    :cond_6
    iget-object v3, p1, Lpfl;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    nop

    nop

    nop

    :goto_1a
    if-ge v3, v2, :cond_7

    nop

    nop

    nop

    nop

    iget-object v4, p1, Lpfl;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v2, p1, Lpfl;->c:Ljava/util/ArrayList;

    nop

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    nop

    nop

    :cond_8
    const-string v1, "Failed to read the strip bytes"

    nop

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lpfs;->f:Lpft;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_9

    nop

    nop

    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    invoke-virtual {v1, v4}, Lpft;->b(I)J

    move-result-wide v1

    nop

    long-to-int v4, v1

    nop

    nop

    nop

    :goto_1c
    new-array v1, v4, [B

    nop

    invoke-virtual {v0, v1}, Lpfs;->b([B)I

    move-result v2

    nop

    nop

    nop

    if-ne v4, v2, :cond_a

    nop

    iput-object v1, p1, Lpfl;->b:[B

    nop

    nop

    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :cond_a
    const-string v1, "Failed to read the compressed thumbnail"

    nop

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    nop

    nop

    nop

    :goto_1d
    iget-object v1, v0, Lpfs;->c:Lpft;

    nop

    nop

    nop

    if-eqz v1, :cond_d

    nop

    iget-short v2, v1, Lpft;->b:S

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x7

    nop

    if-ne v2, v3, :cond_b

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lpfs;->e(Lpft;)V

    :cond_b
    iget v2, v1, Lpft;->e:I

    nop

    invoke-virtual {p1, v2}, Lpfl;->b(I)Lpfw;

    move-result-object v2

    nop

    nop

    if-eqz v2, :cond_d

    nop

    invoke-virtual {v2, v1}, Lpfw;->e(Lpft;)V

    goto :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v0, Lpfs;->c:Lpft;

    nop

    nop

    nop

    if-eqz v1, :cond_d

    nop

    nop

    invoke-virtual {v1}, Lpft;->e()Z

    move-result v3

    nop

    if-nez v3, :cond_c

    nop

    nop

    iget v3, v1, Lpft;->g:I

    nop

    iget-object v4, v0, Lpfs;->a:Lpfk;

    nop

    iget v4, v4, Lpfk;->a:I

    nop

    nop

    nop

    nop

    if-lt v3, v4, :cond_d

    nop

    nop

    nop

    iget-object v4, v0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lpfp;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v1, v2}, Lpfp;-><init>(Lpft;Z)V

    invoke-virtual {v4, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    nop

    :cond_c
    iget v2, v1, Lpft;->e:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Lpfl;->b(I)Lpfw;

    move-result-object v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lpfw;->e(Lpft;)V

    goto :goto_20

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Lpfw;

    nop

    nop

    nop

    nop

    iget v2, v0, Lpfs;->b:I

    nop

    invoke-direct {v1, v2}, Lpfw;-><init>(I)V

    invoke-virtual {p1, v1}, Lpfl;->d(Lpfw;)V

    :cond_d
    :goto_20
    invoke-virtual {v0}, Lpfs;->a()I

    move-result v1

    nop
    :try_end_1
    .catch Lpfn; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_12

    nop

    nop

    :goto_21
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v1, v2, :cond_e

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    :try_start_2
    new-instance v0, Lpfs;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, p0}, Lpfs;-><init>(Ljava/io/InputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    new-instance p1, Lpfl;

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lpfs;->a:Lpfk;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lpfk;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {p1, v1}, Lpfl;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Lpfs;->a()I

    move-result v1

    nop

    nop

    nop
    :try_end_2
    .catch Lpfn; {:try_start_2 .. :try_end_2} :catch_1

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p2}, Lpuf;->e(Ljava/io/InputStream;)Lrsu;

    move-result-object p1

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

    :goto_2a
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    if-eqz p2, :cond_f

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v1, v2, :cond_10

    nop

    goto/32 :goto_13

    nop

    :cond_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object p1, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2f
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 12

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_0
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

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

    :goto_3
    const/4 v10, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_4
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->A:I

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v10, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->W:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_7
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aM:I

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v10, -0x5bff

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_9
    const/16 v10, -0x5be0

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_a
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->ba:I

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_b
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->am:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_c
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->b:I

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v3, 0x13f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v8, -0x6000

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->an:I

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_11
    invoke-static {v6, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_13
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->N:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v10, -0x5df5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_15
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    :goto_16
    sput-object v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bE:Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_17
    const/16 v11, 0x12

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_18
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aF:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v3, 0x128

    nop

    goto/32 :goto_184

    nop

    nop

    :goto_1a
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v10, -0x5bf6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_1e
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_1f
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_20
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->U:I

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_21
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_24
    sput v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    goto/32 :goto_165

    nop

    nop

    :goto_25
    const/16 v8, -0x77de

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v0, 0x101

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_28
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->H:I

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :goto_2b
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2c
    const/16 v10, -0x5cfe

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :goto_2d
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bd:I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2e
    const/16 v11, 0x8

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_2f
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->aj:I

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v8, -0x77d9

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bs:I

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_32
    const/16 v11, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->O:I

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_35
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_36
    const/16 v11, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aw:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_38
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->f:I

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_3a
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ac:I

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

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

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v11, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3e
    sput v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aS:I

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v8, -0x6dec

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_42
    sput v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->k:I

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bm:I

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/16 v11, 0xd

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_47
    const/16 v8, -0x6df6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_49
    const/16 v11, 0x17

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_4a
    const/16 v10, -0x5d00

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bk:I

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_4c
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aE:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_4f
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->be:I

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    :goto_50
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sput v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bu:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->I:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v11, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_57
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

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

    :goto_5a
    const/16 v3, 0x211

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_5b
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->ax:I

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_5e
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_5f
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->L:I

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    :goto_60
    const/16 v10, -0x5df1

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_61
    invoke-static {v1, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/16 v10, -0x6c00

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_64
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aQ:I

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

    :goto_65
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->y:I

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_67
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bl:I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_69
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6a
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->h:I

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_6b
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_6c
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_6e
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->a:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d9

    nop

    nop

    :cond_0
    goto/32 :goto_d8

    nop

    :goto_70
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aI:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_71
    const/16 v8, -0x6eff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_72
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->aY:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_73
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_74
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v1

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->P:I

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_78
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_79
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->at:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_7a
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_7c
    const/16 v8, -0x6dff

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_7d
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_7e
    const/16 v11, 0x18

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_7f
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/16 v8, -0x6dfc

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v7

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_82
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->u:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_85
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_86
    const/16 v8, -0x6d84

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_87
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->g:I

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_88
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aP:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_89
    const/16 v8, -0x5ffb

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_8a
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aB:I

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_8b
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aL:I

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_8c
    const/16 v3, 0x212

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_8d
    const/16 v10, -0x5bf5

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_8f
    const/16 v10, -0x5bfb

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_90
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bi:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_91
    const/16 v10, -0x5bf8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_92
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_94
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aH:I

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/16 v8, -0x6dfa

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    :goto_96
    const/16 v3, -0x7897

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v4

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_99
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const/16 v10, -0x5bfd

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_9b
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->br:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9c
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_9d
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->as:I

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ak:I

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_a0
    const/16 v3, 0x213

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v2

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bg:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-static {v10, v9}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_a4
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_a5
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_a7
    const/16 v10, -0x5bcd

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_a8
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->z:I

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_a9
    sput-object v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->by:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_ab
    const/16 v11, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_ad
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_ae
    sput-object v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bw:Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_af
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/16 v3, 0x11c

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

    :goto_b2
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->aZ:I

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->J:I

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    sput-object v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bF:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const/16 v10, -0x5df2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b6
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_b7
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    const/16 v8, -0x5fff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_b9
    const/16 v10, -0x5bfa

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->c:I

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_bc
    invoke-static {v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_bd
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_be
    const/16 v2, 0x112

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_c0
    const/16 v8, -0x6d6e

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_c2
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->K:I

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_c3
    const/16 v0, 0x106

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_c4
    const/16 v3, 0x11b

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_c6
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->R:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const/16 v11, 0x9

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

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

    :goto_c9
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->M:I

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    const/16 v8, -0x5ffe

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_cb
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_cc
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    const/16 v0, 0x102

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const/16 v10, -0x5cff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->S:I

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_d0
    sput v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_d1
    sput v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_d2
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_d3
    const/4 v9, 0x2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d4
    const/16 v8, -0x6df8

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_d5
    const/16 v11, 0x14

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const/16 v3, 0x214

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    sput-object v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bx:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_d8
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_da
    sput v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bv:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_db
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ah:I

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    const/16 v11, 0xf

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_de
    const/16 v10, -0x5de9

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_df
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->r:I

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_e0
    const/16 v5, 0x201

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_e1
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->T:I

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_e2
    const/16 v11, 0x13

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_e3
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->af:I

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

    :goto_e4
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->av:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_e5
    sput v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_e6
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->aX:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_e7
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_e8
    invoke-static {v10, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bf:I

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->au:I

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_ec
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_ed
    const/16 v8, -0x77d8

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_ee
    const/16 v4, -0x77db

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_ef
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bq:I

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->az:I

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->n:I

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_f3
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    :goto_f4
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->p:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    const/16 v3, 0x13e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    const/4 v1, 0x0

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_f9
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->t:I

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    const/16 v8, -0x5ffd

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_fb
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_fc
    const/16 v10, -0x5deb

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-static {v10, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_ff
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_100
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_101
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->s:I

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_102
    const/16 v10, -0x6fef

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    const/16 v8, -0x6dfb

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    const/16 v10, -0x6ff0

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_106
    const/16 v8, -0x7000

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_107
    invoke-static {v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_109
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bp:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_10a
    const/4 v11, 0x5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const/16 v10, -0x6bfd

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->ao:I

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_10d
    const/16 v0, 0x10f

    nop

    goto/32 :goto_127

    nop

    nop

    :goto_10e
    const/16 v8, -0x6d7a

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_10f
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->ap:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_110
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bn:I

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_111
    const/16 v0, 0x10e

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_112
    sput v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_114
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bo:I

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-static {v10, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_116
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aO:I

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->Q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_118
    const/16 v3, -0x7d68

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_119
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_11a
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    const v0, 0xe

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11c
    const/16 v10, -0x5bcc

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_11d
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_11f
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ag:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_121
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_122
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bb:I

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_123
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_125
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_126
    sput v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aR:I

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_127
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_128
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_129
    const/16 v11, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    const/16 v10, -0x5bfe

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aJ:I

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_130
    const/16 v11, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_131
    const/16 v8, -0x6dfe

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_132
    invoke-static {v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_134
    const/16 v0, 0x110

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_135
    invoke-static {v1, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_136
    const-wide/16 v0, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_137
    const/4 v11, 0x6

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->ay:I

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_139
    const/16 v10, -0x5bf4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    const/16 v10, -0x5dec

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    const/16 v8, -0x7d66

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_13d
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_13e
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ae:I

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    const/16 v2, 0x116

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    const/16 v0, 0x111

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_141
    const/16 v8, -0x6df7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_142
    const/16 v3, 0x13b

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_143
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_144
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aG:I

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_145
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_146
    const/16 v8, -0x7d63

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_147
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_148
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_149
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    const/16 v3, 0x132

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_14c
    const/16 v8, -0x6efe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_14d
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->bt:I

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_14e
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_14f
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_151
    const/16 v11, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_152
    const/16 v10, -0x5df4

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_153
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_154
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_155
    sput v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    :goto_156
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_75

    nop

    nop

    :goto_157
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_158
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_159
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_15a
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_15b
    invoke-static {v1, v9}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_15c
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ai:I

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_15d
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_15e
    sput v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->l:I

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    const/16 v11, 0x1e

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_161
    const/16 v10, -0x6fee

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_162
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_163
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_bc

    nop

    nop

    :goto_165
    const/16 v7, 0x202

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_166
    const/16 v10, -0x5df0

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_167
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->ar:I

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_169
    sput v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    invoke-static {v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_16b
    const/16 v2, 0x117

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_16c
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aD:I

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_16d
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_16e
    const/16 v8, -0x6ffd

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_16f
    const/16 v3, 0x11a

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_170
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->aV:I

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_171
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aK:I

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_172
    invoke-static {v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v0

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

    :goto_173
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v11

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_174
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_176
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aA:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_177
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_132

    nop

    nop

    :goto_178
    const/16 v8, -0x6df9

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    :goto_179
    const/16 v8, -0x5ffc

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_17a
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    :goto_17c
    const/16 v0, 0x103

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_17d
    const/16 v11, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_17e
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->F:I

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_17f
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_180
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bj:I

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_181
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aq:I

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_182
    const/16 v8, -0x6dfd

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_183
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_184
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_185
    invoke-static {v10, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_186
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ab:I

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    const/16 v8, -0x6ffc

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_188
    const/16 v11, 0xe

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_189
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aN:I

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_18a
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bh:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_18b
    const/16 v8, -0x6d6f

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_18d
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->ad:I

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    const/16 v0, 0x100

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_18f
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_190
    invoke-static {v9, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v8

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_191
    const/16 v10, -0x5bf9

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_192
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_193
    const/16 v2, 0x115

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_194
    const/16 v3, 0x12d

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_195
    const/16 v10, -0x5bf7

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_196
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->aW:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_197
    const/16 v8, -0x6d70

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_198
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->aU:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_199
    const/16 v11, 0x1c

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    sput v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->v:I

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_19b
    const/16 v8, -0x77dc

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_19d
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19e
    const/16 v10, -0x5bfc

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-static {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->Y:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1a1
    invoke-static {v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    const/16 v11, 0xc

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_1a3
    sput v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bc:I

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->V:I

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    sput v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->X:I

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    invoke-static {v1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1a7
    invoke-static {v9, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->c(IS)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    sput v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aC:I

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :goto_1a9
    const/16 v3, 0x131

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

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

    :goto_1
    const-string v1, "yyyy:MM:dd HH:mm:ss"

    nop

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

    :goto_2
    const-string v0, ""

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

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
    new-instance v0, Lpfl;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

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

    nop

    :goto_6
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bG:Ljava/text/DateFormat;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "UTC"

    nop

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

    :goto_f
    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_12
    iput-object v0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bC:Ljava/text/DateFormat;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    const v0, 0x1f

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    iput-object v0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bz:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    :goto_18
    sget-object v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->by:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v2, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bD:Ljava/util/Calendar;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1c
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    iput-object v2, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bH:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1}, Lpfl;-><init>(Ljava/nio/ByteOrder;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

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

    :goto_23
    const-string v1, "yyyy:MM:dd"

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
.end method

.method private static final A(J)Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Lrrf;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

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
.end method

.method public static c(IS)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    or-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    shl-int/lit8 p0, p0, 0x10

    nop

    goto/32 :goto_0

    nop

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
    int-to-char p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected static d(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-char p0, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method protected static f([I)I
    .locals 8

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_b

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

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

    :goto_a
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lt v2, v4, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v4, 0x5

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

    nop

    :goto_10
    if-eq v7, v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lpfw;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    aget v7, v0, v2

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

    :goto_13
    const v1, 0xf

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

    :goto_14
    aget v6, p0, v5

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    move v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    if-lt v5, v4, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_19
    array-length v4, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    move v5, v1

    nop

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    :goto_1c
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    shl-int/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    const v0, 0x1c

    nop

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

    :goto_21
    or-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    ushr-int/lit8 p0, p0, 0x10

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static n(I)S
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    int-to-short p0, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method protected static o(I)S
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    int-to-short p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    shr-int/lit8 p0, p0, 0x10

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
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static s(II)Z
    .locals 5

    goto/32 :goto_11

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    goto :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    :goto_6
    const v1, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq p1, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v4

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v4, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1c

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    if-ne v3, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_16
    ushr-int/lit8 v3, p0, 0x18

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

    :goto_17
    shr-int/2addr v3, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lpfw;->a:[I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget v3, v0, v2

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

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    :goto_1d
    and-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public static t(S)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bE:Ljava/util/HashSet;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static w(D)[Lpch;
    .locals 10

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-double/2addr p0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    double-to-int v0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-double/2addr p0, v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    mul-double/2addr p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    int-to-double v1, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bF:Ljava/lang/Long;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_4

    nop

    nop

    :goto_a
    int-to-double v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_c
    return-object v2

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    mul-double/2addr p0, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array v2, v2, [Lpch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    int-to-long p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_15
    aput-object v5, v2, v6

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_16
    const-wide/high16 v3, 0x404e000000000000L    # 60.0

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

    :goto_17
    new-instance v5, Lpch;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    invoke-direct {v5, v8, v9, v6, v7}, Lpch;-><init>(JJ)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v3, v4, v5, v6, v7}, Lpch;-><init>(JJ)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    invoke-direct {v5, p0, p1, v0, v1}, Lpch;-><init>(JJ)V

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    double-to-int v0, p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sub-double/2addr p0, v0

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

    :goto_21
    int-to-long v4, v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aput-object v5, v2, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aput-object v3, v2, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_24
    double-to-int p0, p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v5, Lpch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    const-wide/16 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    const/4 v0, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    new-instance v3, Lpch;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    int-to-long v8, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    const-wide/16 v0, 0x64

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)Lpch;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Lpch;-><init>(Lpch;)V

    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->e(I)I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lpch;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->v(II)[Lpch;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget-object p0, p0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    array-length p1, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    return-object p1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b(I)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->e(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->l(II)Lpft;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_11

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_e
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    move-object p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lpft;->m()[I

    move-result-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget p0, p0, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    array-length v0, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final e(I)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 p0, -0x1

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
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->h()Landroid/util/SparseIntArray;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->g(I)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lpft;->d()Ljava/lang/String;

    move-result-object p0

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

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->l(II)Lpft;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->e(I)I

    move-result v0

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

    nop

    nop
.end method

.method public final h()Landroid/util/SparseIntArray;
    .locals 15

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_1
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->ae:I

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->am:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_b4

    nop

    nop

    :goto_5
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_6
    or-int v5, v0, v12

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_7
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->as:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_c
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->ag:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v9, 0x30003

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_e
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_f
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->br:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->U:I

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aS:I

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    shl-int/lit8 v0, v0, 0x18

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_16
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bH:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    shl-int/lit8 v0, v0, 0x18

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_19
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aA:I

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->aW:I

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_1b
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bv:I

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_1c
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bj:I

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_1d
    or-int/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_1f
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aO:I

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_20
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aG:I

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->ah:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->l:I

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bH:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_26
    or-int v8, v0, v7

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v6, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->L:I

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bs:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->be:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_2d
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->z:I

    nop

    goto/32 :goto_164

    nop

    nop

    :goto_2e
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bq:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ak:I

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->f([I)I

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x2000b

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_34
    or-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_36
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    or-int v8, v0, v7

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_39
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->at:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->M:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_3b
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ao:I

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_3d
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bi:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_3e
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->q:I

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_40
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_1

    nop

    nop

    :goto_41
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_b3

    nop

    nop

    :goto_42
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ab:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_44
    or-int v5, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_45
    or-int/2addr v10, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_47
    or-int v12, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_e0

    nop

    nop

    :goto_4a
    const/high16 v9, 0x30000

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f8

    nop

    nop

    :goto_4c
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ai:I

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_143

    nop

    nop

    :goto_4e
    or-int v3, v0, v12

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_4f
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v2, v0, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_51
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aD:I

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_52
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aq:I

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_53
    or-int v1, v0, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_10e

    nop

    nop

    :goto_55
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bm:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->N:I

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_5c
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_5d
    const v9, 0x2000d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bc:I

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

    :goto_60
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_61
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aR:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_62
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bg:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_64
    or-int v1, v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_65
    or-int/2addr v10, v0

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_66
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->I:I

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_6b
    const v3, 0x10004

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_136

    nop

    nop

    :goto_6d
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->P:I

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_6f
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ba:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_70
    or-int/2addr v0, v7

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_71
    new-instance v0, Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->f([I)I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->f([I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->e:I

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_c4

    nop

    nop

    :goto_78
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7b
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aN:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_7c
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_7e
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->T:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_7f
    const v9, 0x30001

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_80
    or-int/2addr v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_82
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->W:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    or-int v6, v0, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_84
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    or-int v6, v0, v11

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_86
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->Y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_89
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->aP:I

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_8a
    or-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    or-int/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_8c
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->x:I

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_8e
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->h:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    or-int v6, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_ed

    nop

    nop

    :goto_92
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_7a

    nop

    nop

    :goto_93
    or-int/2addr v10, v0

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->y:I

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_96
    const v7, 0x40001

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_97
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->d:I

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_98
    or-int/2addr v10, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->J:I

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bp:I

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v2, v0, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_51

    nop

    nop

    :goto_9f
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    or-int/2addr v10, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    or-int v14, v0, v13

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    shl-int/lit8 v0, v0, 0x18

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_a5
    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_a6
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->K:I

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_a7
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aI:I

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_a8
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_64

    nop

    nop

    :goto_a9
    or-int/2addr v9, v0

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_d6

    nop

    nop

    :goto_ab
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->V:I

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    shl-int/lit8 v0, v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_ae
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const v6, 0x10001

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_b1
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bh:I

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b3
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->H:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_b4
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bo:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->f([I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_b8
    or-int/2addr v6, v0

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_b9
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_1c

    nop

    nop

    :goto_ba
    invoke-virtual {v2, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/high16 v7, 0x70000

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

    :goto_bc
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_bd
    goto/32 :goto_17

    nop

    nop

    :goto_be
    return-object p0

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->aQ:I

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_c3
    or-int/2addr v0, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_c4
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_c6
    shl-int/lit8 v0, v0, 0x18

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_ca
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->ad:I

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

    :goto_cb
    const v1, 0x20007

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_10

    nop

    nop

    :goto_cd
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aj:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_ce
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->az:I

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_d0
    const v1, 0x3000b

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v2, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    filled-new-array {v1}, [I

    move-result-object v0

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_d4
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const v13, 0x50003

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_d6
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->R:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_d9
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->S:I

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v2, v6, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_db
    or-int/2addr v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_dd
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aB:I

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_de
    const v3, 0x70004

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->Q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_e1
    or-int/2addr v9, v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ac:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->aL:I

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_e4
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bd:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aY:I

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_e6
    or-int/2addr v0, v7

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

    :goto_e7
    const v10, 0x20021

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ax:I

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_3b

    nop

    nop

    :goto_ec
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->aK:I

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_ed
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->t:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_ef
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aZ:I

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

    :goto_f0
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->aV:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_f3
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->p:I

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bu:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_f5
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bn:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f7
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_f8
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->g:I

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bk:I

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_fc
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bl:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_fd
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_100
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->af:I

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_101
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_118

    nop

    nop

    :goto_103
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bf:I

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bH:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_109
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :cond_0
    goto/32 :goto_68

    nop

    :goto_10a
    iget-object v2, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bH:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_10b
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    or-int v5, v0, v7

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aw:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10f
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->a:I

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_110
    or-int/2addr v9, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_111
    const/4 v1, 0x1

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_112
    or-int v1, v0, v4

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_114
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_115
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_bd

    nop

    :cond_1
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_116
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->aT:I

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_117
    const v10, 0x50002

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_118
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_11b
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_11d
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aX:I

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    const v10, 0x20014

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_120
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_121
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_122
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->au:I

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_123
    or-int v10, v0, v9

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_124
    const v10, 0xa0001

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_125
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_11a

    nop

    nop

    :goto_126
    const v10, 0x50006

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_127
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->F:I

    nop

    goto/32 :goto_157

    nop

    nop

    :goto_128
    const/high16 v10, 0x40000

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aU:I

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_12e
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aC:I

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_12f
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->f([I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_130
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->c:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_131
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_132
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->O:I

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_133
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aF:I

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_134
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->an:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_53

    nop

    nop

    :goto_136
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->aJ:I

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v2, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_94

    nop

    nop

    :goto_138
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->av:I

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_13b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_13d
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bb:I

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :goto_13e
    const v12, 0x50001

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_142
    const v6, 0x70001

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_143
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->A:I

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    or-int/2addr v10, v0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_145
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aH:I

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_147
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ay:I

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_149
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->v:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_14b
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->aE:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_14c
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_14e
    or-int v1, v0, v4

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_14f
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->ap:I

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_152
    const v11, 0x30002

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

    :goto_153
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_154
    or-int v1, v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_155
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aM:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_156
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_158
    const/high16 v4, 0x20000

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_159
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->X:I

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_15b
    const v3, 0x20002

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    const v10, 0x30300

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_15d
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->aa:I

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_15e
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_15f
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_160
    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->ar:I

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_161
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_162
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_163
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bt:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v2, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_165
    or-int v13, v0, v12

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method

.method public final i(ILjava/lang/Object;)Lpft;
    .locals 8

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_c0

    nop

    :goto_1
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Lpft;->h(Ljava/lang/String;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_8e

    nop

    nop

    :goto_4
    goto/32 :goto_5d

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_bc

    nop

    nop

    :goto_7
    check-cast p2, [J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_8
    check-cast p2, [Lpch;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_9
    move v0, v7

    nop

    nop

    :goto_a
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-array p1, p1, [J

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_80

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    new-array p1, p1, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    aget-object v1, p2, v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    instance-of p1, p2, [Ljava/lang/Byte;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p2, [Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_3
    goto/32 :goto_58

    nop

    nop

    :goto_19
    int-to-char v1, v1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aput-byte v1, p1, v0

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

    :goto_1c
    if-nez p1, :cond_4

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    array-length v1, p2

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p0, :cond_5

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_5
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-array p2, v6, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_23
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_24
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    :cond_6
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_77

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_7

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_28
    instance-of p1, p2, Ljava/lang/Byte;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    array-length p1, p2

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

    :goto_2a
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_77

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_2e
    invoke-static {p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v1

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    aput v1, p1, v0

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

    :goto_31
    aput-wide v0, p1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_32
    array-length p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_33
    instance-of p1, p2, [B

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_34
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_62

    nop

    nop

    :goto_35
    if-nez v3, :cond_a

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3f

    nop

    nop

    :goto_36
    if-eqz v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    :cond_b
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct/range {v0 .. v5}, Lpft;-><init>(SSIIZ)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3b
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_77

    nop

    :goto_3d
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, p2}, Lpft;->k([J)Z

    move-result p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3f
    move v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_40
    const/4 p0, 0x0

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_41
    if-nez p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_83

    nop

    nop

    :goto_43
    const/4 v6, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_1e

    nop

    nop

    :goto_47
    invoke-virtual {p0, p1}, Lpft;->k([J)Z

    move-result p1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_48
    if-nez p1, :cond_f

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_4d

    nop

    nop

    :goto_49
    instance-of p1, p2, Ljava/lang/Short;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-lt v0, v1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_10
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    :goto_4c
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4d
    check-cast p2, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, p1}, Lpft;->g(I)Z

    move-result p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4f
    new-array p1, p1, [I

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_50
    move v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_52
    aput-object p2, p1, v7

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_53
    move v1, v7

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move v5, v7

    nop

    :goto_55
    goto/32 :goto_8b

    nop

    nop

    :goto_56
    aput-byte p1, p2, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_57
    new-array v0, v6, [J

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_58
    check-cast p2, [B

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_59
    if-nez p1, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_5a
    aput-wide p1, v0, v7

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz p2, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-lt v0, v1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->g(I)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_76

    nop

    nop

    :goto_60
    array-length p1, p2

    nop

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

    :goto_61
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_62
    check-cast p2, [Ljava/lang/Short;

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_63
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_b1

    nop

    nop

    :goto_65
    if-lt v7, v0, :cond_14

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_14
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    instance-of p1, p2, [Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0, p2}, Lpft;->i([B)Z

    move-result p1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->o(I)S

    move-result v2

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_69
    instance-of p1, p2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_77

    nop

    nop

    :goto_6b
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    return-object p0

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_42

    nop

    nop

    :goto_6e
    if-lez v0, :cond_15

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_82

    nop

    :goto_6f
    check-cast p2, Lpch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_70
    instance-of p1, p2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_71
    move v0, v7

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0, p1}, Lpft;->l([Lpch;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_74
    instance-of p1, p2, [Ljava/lang/Short;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_75
    if-nez p1, :cond_16

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

    :cond_16
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0, p1}, Lpft;->i([B)Z

    move-result p1

    nop

    :goto_77
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_78
    check-cast p2, Ljava/lang/Short;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p0, p1}, Lpft;->j([I)Z

    move-result p1

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    new-instance p0, Lpft;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_8c

    nop

    nop

    :goto_7d
    aput v1, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    instance-of p1, p2, [I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez p1, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    :cond_17
    goto/32 :goto_b9

    nop

    nop

    :goto_80
    array-length v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_81
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_84
    new-array p1, p1, [B

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0, p2}, Lpft;->j([I)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, p2}, Lpft;->i([B)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->d(I)I

    move-result v3

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

    nop

    :goto_88
    goto/16 :goto_77

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_8a
    array-length p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {p0, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->s(II)Z

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

    :goto_8c
    instance-of p1, p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_8d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_40

    nop

    nop

    :goto_8f
    goto/16 :goto_77

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_77

    nop

    nop

    :goto_92
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_77

    nop

    nop

    :goto_94
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_95
    array-length v1, p2

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_96
    if-nez p1, :cond_18

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_97
    aget-object v0, p2, v7

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-nez p1, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_99
    check-cast p2, Ljava/lang/Byte;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    array-length v1, p2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    new-array p1, v6, [Lpch;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_9d
    invoke-virtual {p0, p2}, Lpft;->l([Lpch;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_9e
    goto/16 :goto_77

    nop

    :goto_9f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->h()Landroid/util/SparseIntArray;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_a2
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    move-object v0, p0

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_a6
    goto/16 :goto_1a

    nop

    nop

    :goto_a7
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_c

    nop

    nop

    :goto_a9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_aa
    check-cast p2, [Ljava/lang/Byte;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_ab
    goto :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_a2

    nop

    nop

    :goto_ad
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    :goto_ae
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_af
    check-cast p2, Ljava/lang/Long;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {p0, p1}, Lpft;->j([I)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_b2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b3
    aget-object v1, p2, v0

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

    :goto_b4
    check-cast p2, [Ljava/lang/Long;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_b5
    if-nez p1, :cond_1a

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    instance-of p1, p2, [J

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b7
    if-lt v0, v1, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    int-to-char p1, p1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_b9
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_4c

    nop

    nop

    :goto_bb
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_bc
    move v1, v7

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_bd
    instance-of p1, p2, [Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_be
    instance-of p1, p2, [Lpch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_bf
    move v0, v7

    nop

    nop

    nop

    :goto_c0
    goto/32 :goto_1d

    nop

    nop

    :goto_c1
    invoke-virtual {p0, p1}, Lpft;->g(I)Z

    move-result p1

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p0, v0}, Lpft;->k([J)Z

    move-result p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    aget-object v1, p2, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c4
    instance-of p1, p2, Lpch;

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_c5
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c6
    check-cast p2, Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(I)Lpft;
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v5, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

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

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto :goto_7

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct/range {v0 .. v5}, Lpft;-><init>(SSIIZ)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->d(I)I

    move-result v3

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    invoke-static {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->o(I)S

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

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
    invoke-static {p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->h()Landroid/util/SparseIntArray;

    move-result-object p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    :goto_1c
    invoke-static {p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->g(I)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Lpft;

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
.end method

.method public final k(I)Lpft;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->e(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->l(II)Lpft;

    move-result-object p0

    nop

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
.end method

.method public final l(II)Lpft;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-static {p2}, Lpft;->f(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    iget-object p0, p0, Lpfl;->a:[Lpfw;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lpfw;->b(S)Lpft;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-object p0, p0, p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :goto_2
    const/high16 v3, 0x10000

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lpga;

    nop

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

    :goto_5
    return-object v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    new-instance v1, Lpfu;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    new-instance v2, Ljava/io/BufferedOutputStream;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Lpga;-><init>(Lpfz;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, v2, p0, p1}, Lpfu;-><init>(Ljava/io/OutputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lpfl;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final p(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

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

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->e(I)I

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, v0}, Lpfl;->h(SI)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q([B)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->r([BZ)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r([BZ)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->7dd154808b1c676d3d63f3a63e9edabfm(Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p2, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    new-instance v0, Ljava/io/ByteArrayInputStream;

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

    :goto_8
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const-string p1, "Argument is null"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/io/FileInputStream;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x20

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->7dd154808b1c676d3d63f3a63e9edabfm(Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    :goto_13
    new-instance v0, Ljava/io/BufferedInputStream;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const v1, 0x12

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public final u(I)[Lpch;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->e(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->v(II)[Lpch;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final v(II)[Lpch;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    instance-of p1, p0, [Lpch;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->l(II)Lpft;

    move-result-object p0

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

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, [Lpch;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop
.end method

.method public final x(IJLjava/util/TimeZone;)V
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-long v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3
    const-string p4, "-"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p1, v1, :cond_1

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v4, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->A(J)Ljava/lang/String;

    move-result-object p4

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6
    sget p4, Lcom/google/android/libraries/camera/exif/ExifInterface;->M:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p4, v4, v5}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_a
    invoke-virtual {p0, p4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_b
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_c
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5b

    nop

    nop

    :goto_d
    const-string p4, "+"

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->s:I

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_10
    if-eq p1, p4, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    const-string p0, "Must pass a date stamp tag, unrecognized tag: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_48

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_17
    invoke-virtual {p4, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xd

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_55

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p2, p3}, Lpuq;->bI(J)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1e
    goto/16 :goto_e

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    :goto_21
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->N:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_25
    goto/32 :goto_32

    nop

    nop

    :goto_26
    if-eq p1, v1, :cond_5

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->A(J)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2b
    if-ltz p4, :cond_6

    nop

    goto/32 :goto_1f

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2d
    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->af:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2e
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v1, p4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    :goto_33
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance p2, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_35
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bG:Ljava/text/DateFormat;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v2, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bG:Ljava/text/DateFormat;

    nop

    nop

    nop

    nop

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_36
    const-string p4, ":"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eq p1, v1, :cond_7

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_38
    sget p4, Lcom/google/android/libraries/camera/exif/ExifInterface;->N:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aM:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3a
    goto :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3c
    goto :goto_46

    nop

    nop

    :goto_3d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bG:Ljava/text/DateFormat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->M:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p4, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_41
    if-eq p1, p4, :cond_8

    nop

    goto/32 :goto_33

    nop

    :cond_8
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_42
    if-eq p1, v1, :cond_9

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_9
    :goto_43
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_44
    if-ne p1, v0, :cond_a

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_a
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_45
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aN:I

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_47
    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->ae:I

    nop

    nop

    :goto_48
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_49
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->M:I

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4a
    goto :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aO:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4e
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->N:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    throw p2

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_5a

    nop

    nop

    :goto_51
    if-eqz v2, :cond_b

    nop

    goto/32 :goto_2a

    nop

    :cond_b
    goto/32 :goto_29

    nop

    nop

    :goto_52
    if-eq p1, v0, :cond_c

    nop

    goto/32 :goto_4b

    nop

    :cond_c
    goto/32 :goto_57

    nop

    nop

    :goto_53
    if-eq p1, v0, :cond_d

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_d
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_54
    rem-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_55
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_56
    invoke-static {p1, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_57
    sget p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->ad:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_59
    goto/32 :goto_15

    nop

    nop

    :goto_5a
    const-string p0, "Must pass a date stamp tag, unrecognized tag: "

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    throw p2

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5e
    const-wide/16 v6, 0x3c

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final y(Lpft;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

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

    :goto_1
    invoke-virtual {p0, p1}, Lpfl;->j(Lpft;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop
.end method
