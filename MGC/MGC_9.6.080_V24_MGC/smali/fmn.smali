.class public final Lfmn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfmf;


# static fields
.field private static final a:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final b:Lfmo;

.field private final c:Ljava/util/Set;

.field private final d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m(J)V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lfmn;->e:J

    nop

    invoke-static {v1}, Lftw;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    nop

    nop

    int-to-long v4, v0

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    iput-wide v2, p0, Lfmn;->e:J

    nop

    nop

    iget v0, p0, Lfmn;->i:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    iput v0, p0, Lfmn;->i:I

    nop

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :goto_d
    :try_start_2
    iget-wide v0, p0, Lfmn;->e:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v0, p1

    nop

    nop

    if-lez v0, :cond_1

    nop

    iget-object v0, p0, Lfmn;->b:Lfmo;

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lfmt;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lfmt;->g:Lfmi;

    nop

    nop

    invoke-virtual {v1}, Lfmi;->b()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    invoke-static {v1}, Lftw;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    check-cast v0, Lfmt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v1}, Lfmt;->c(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    :cond_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    const-string p1, "LruBitmapPool"

    nop

    const/4 p2, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_4

    nop

    const-string p1, "LruBitmapPool"

    nop

    nop

    const-string p2, "Size mismatch, resetting"

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lfmn;->b:Lfmo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_4
    const-wide/16 p1, 0x0

    nop

    nop

    nop

    iput-wide p1, p0, Lfmn;->e:J

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x5

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lfmn;->a:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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

.method public constructor <init>(J)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lfmt;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Lfmn;->c:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

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

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ljava/util/HashSet;

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

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lfmt;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lfmn;->b:Lfmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    const v1, 0x1

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

    :goto_17
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    iput-wide p1, p0, Lfmn;->d:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized d5484163cd8d335e6b17663474ff5f2bm(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 11

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

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

    :goto_3
    goto/32 :goto_11

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    const v0, 0x7

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

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    return-object v2

    nop

    :cond_1
    :try_start_0
    const-string p1, "Cannot create a mutable Bitmap with config: "

    nop

    nop

    nop

    const-string p2, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    invoke-static {p3, p1, p2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    if-eq p3, v0, :cond_1

    nop

    iget-object v0, p0, Lfmn;->b:Lfmo;

    nop

    nop

    if-nez p3, :cond_2

    nop

    nop

    nop

    nop

    sget-object p3, Lfmn;->a:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lfmt;

    nop

    nop

    iget-object v1, v1, Lfmt;->f:Lfms;

    nop

    nop

    mul-int v2, p1, p2

    nop

    nop

    nop

    nop

    invoke-static {p3}, Lftw;->b(Landroid/graphics/Bitmap$Config;)I

    move-result v3

    nop

    mul-int/2addr v2, v3

    nop

    nop

    invoke-virtual {v1, v2, p3}, Lfms;->d(ILandroid/graphics/Bitmap$Config;)Lfmr;

    move-result-object v1

    nop

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    nop

    nop

    invoke-virtual {v3, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    sget-object v3, Lfmt;->b:[Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    :cond_3
    sget-object v3, Lfmq;->a:[I

    nop

    nop

    invoke-virtual {p3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    aget v3, v3, v5

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_7

    nop

    nop

    const/4 v5, 0x2

    nop

    if-eq v3, v5, :cond_6

    nop

    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v5, :cond_5

    nop

    const/4 v5, 0x4

    nop

    nop

    nop

    if-eq v3, v5, :cond_4

    nop

    nop

    filled-new-array {p3}, [Landroid/graphics/Bitmap$Config;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    :cond_4
    sget-object v3, Lfmt;->e:[Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    sget-object v3, Lfmt;->d:[Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    sget-object v3, Lfmt;->c:[Landroid/graphics/Bitmap$Config;

    nop

    goto :goto_b

    nop

    nop

    :cond_7
    sget-object v3, Lfmt;->a:[Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    :goto_b
    array-length v5, v3

    nop

    const/4 v6, 0x0

    nop

    nop

    :goto_c
    if-ge v6, v5, :cond_b

    nop

    nop

    nop

    nop

    nop

    aget-object v7, v3, v6

    nop

    nop

    move-object v8, v0

    nop

    nop

    check-cast v8, Lfmt;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Lfmt;->b(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v8

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    invoke-interface {v8, v9}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Ljava/lang/Integer;

    nop

    if-eqz v8, :cond_a

    nop

    nop

    nop

    mul-int/lit8 v9, v2, 0x8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    if-gt v10, v9, :cond_a

    nop

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    if-ne v3, v2, :cond_9

    nop

    if-nez v7, :cond_8

    nop

    nop

    nop

    if-eqz p3, :cond_b

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_8
    invoke-virtual {v7, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_9
    :goto_d
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lfmt;

    nop

    iget-object v2, v2, Lfmt;->f:Lfms;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lfme;->c(Lfmp;)V

    move-object v1, v0

    nop

    nop

    nop

    check-cast v1, Lfmt;

    nop

    nop

    nop

    iget-object v1, v1, Lfmt;->f:Lfms;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    invoke-virtual {v1, v2, v7}, Lfms;->d(ILandroid/graphics/Bitmap$Config;)Lfmr;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    :cond_a
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    :cond_b
    :goto_e
    move-object v2, v0

    nop

    nop

    nop

    check-cast v2, Lfmt;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lfmt;->g:Lfmi;

    nop

    invoke-virtual {v2, v1}, Lfmi;->a(Lfmp;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Landroid/graphics/Bitmap;

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    iget v1, v1, Lfmr;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lfmt;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Lfmt;->c(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_c
    if-nez v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    iget p1, p0, Lfmn;->g:I

    nop

    nop

    add-int/2addr p1, v4

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Lfmn;->g:I

    nop

    goto :goto_f

    nop

    nop

    :cond_d
    iget p1, p0, Lfmn;->f:I

    nop

    nop

    add-int/2addr p1, v4

    nop

    nop

    nop

    nop

    iput p1, p0, Lfmn;->f:I

    nop

    nop

    nop

    nop

    nop

    iget-wide p1, p0, Lfmn;->e:J

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lftw;->a(Landroid/graphics/Bitmap;)I

    move-result p3

    nop

    int-to-long v0, p3

    nop

    nop

    nop

    sub-long/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    iput-wide p1, p0, Lfmn;->e:J

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method private static f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    sget-object p2, Lfmn;->a:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p1, p2, p3}, Lfmn;->f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2, p3}, Lfmn;->d5484163cd8d335e6b17663474ff5f2bm(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

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

    nop

    nop

    nop

    :goto_7
    goto :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

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
    invoke-static {p1, p2, p3}, Lfmn;->f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2, p3}, Lfmn;->d5484163cd8d335e6b17663474ff5f2bm(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    const v1, 0xf

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

    :goto_2
    invoke-direct {p0, v0, v1}, Lfmn;->19e596a3e324281407eb5c11093c0152m(J)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v0, 0x0

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Landroid/graphics/Bitmap;)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lftw;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    nop

    int-to-long v0, v0

    nop

    nop

    nop

    iget-wide v2, p0, Lfmn;->d:J

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfmn;->c:Ljava/util/Set;

    nop

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    invoke-static {p1}, Lftw;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    nop

    nop

    nop

    iget-object v1, p0, Lfmn;->b:Lfmo;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lftw;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    nop

    move-object v4, v1

    nop

    check-cast v4, Lfmt;

    nop

    iget-object v4, v4, Lfmt;->f:Lfms;

    nop

    nop

    nop

    invoke-virtual {v4, v2, v3}, Lfms;->d(ILandroid/graphics/Bitmap$Config;)Lfmr;

    move-result-object v2

    nop

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    nop

    check-cast v3, Lfmt;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lfmt;->g:Lfmi;

    nop

    nop

    invoke-virtual {v3, v2, p1}, Lfmi;->c(Lfmp;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lfmt;

    nop

    invoke-virtual {v1, p1}, Lfmt;->b(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p1

    nop

    iget v1, v2, Lfmr;->a:I

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    iget v2, v2, Lfmr;->a:I

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    move v1, v3

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    add-int/2addr v1, v3

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {p1, v2, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lfmn;->h:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr p1, v3

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Lfmn;->h:I

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Lfmn;->e:J

    nop

    nop

    nop

    nop

    nop

    int-to-long v3, v0

    nop

    nop

    nop

    add-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, p0, Lfmn;->e:J

    nop

    nop

    nop

    iget-wide v0, p0, Lfmn;->d:J

    nop

    nop

    nop

    invoke-direct {p0, v0, v1}, Lfmn;->19e596a3e324281407eb5c11093c0152m(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    :goto_3
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_5
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Cannot pool recycled bitmap"

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :goto_e
    new-instance p1, Ljava/lang/NullPointerException;

    nop

    nop

    const-string v0, "Bitmap must not be null"

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(I)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1}, Lfmn;->19e596a3e324281407eb5c11093c0152m(J)V

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    shr-long/2addr v0, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x28

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfmn;->c()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    if-lt p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_8
    iget-wide v0, p0, Lfmn;->d:J

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    const/16 v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

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

    nop

    nop

    :goto_b
    if-ge p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_12
    const/16 v0, 0xf

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

    :goto_13
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    goto :goto_f

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method
