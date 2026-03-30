.class public final Lfrb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjr;


# static fields
.field private static final c:Lfdn;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private final d:Lfdn;

.field private final e:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lfrb;->c:Lfdn;

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

    :goto_6
    const v1, 0xd

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

    nop

    :goto_7
    goto/32 :goto_3

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

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    invoke-direct {v0, v1}, Lfdn;-><init>([C)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xc

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lfmf;Lfmm;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lfrb;->d:Lfdn;

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

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lfrb;->c:Lfdn;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    new-instance p1, Liof;

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

    :goto_4
    iput-object p1, p0, Lfrb;->e:Liof;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x0

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

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p3, p4, p2}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[S)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lfrb;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    iput-object p1, p0, Lfrb;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILfjp;)Lflx;
    .locals 16

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v1, v1, Lfrb;->d:Lfdn;

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

    :goto_2
    invoke-virtual {v0, v2}, Lfdn;->d(Ljava/nio/ByteBuffer;)Lfja;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v3, Lfja;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    if-eqz v0, :cond_1f

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->e()Z

    move-result v0

    nop

    const/4 v4, 0x0

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_b

    nop

    nop

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v5

    nop

    nop

    nop

    :goto_3
    const/4 v8, 0x6

    nop

    nop

    if-ge v7, v8, :cond_1

    nop

    nop

    invoke-virtual {v3}, Lfja;->a()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    int-to-char v8, v8

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    const-string v7, "GIF"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    nop

    iput v6, v0, Lfiz;->b:I

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    invoke-virtual {v3}, Lfja;->b()I

    move-result v9

    nop

    nop

    nop

    iput v9, v0, Lfiz;->f:I

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    invoke-virtual {v3}, Lfja;->b()I

    move-result v9

    nop

    nop

    nop

    iput v9, v0, Lfiz;->g:I

    nop

    nop

    invoke-virtual {v3}, Lfja;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    and-int/lit16 v10, v0, 0x80

    nop

    if-eqz v10, :cond_3

    nop

    nop

    nop

    nop

    move v10, v6

    nop

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    :cond_3
    move v10, v5

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v10, v9, Lfiz;->h:Z

    nop

    nop

    nop

    nop

    nop

    and-int/lit8 v0, v0, 0x7

    nop

    nop

    nop

    add-int/2addr v0, v6

    nop

    nop

    nop

    nop

    nop

    int-to-double v10, v0

    nop

    nop

    nop

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    nop

    double-to-int v0, v10

    nop

    nop

    nop

    iput v0, v9, Lfiz;->i:I

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->a()I

    move-result v9

    nop

    iput v9, v0, Lfiz;->j:I

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    invoke-virtual {v3}, Lfja;->a()I

    move-result v9

    nop

    nop

    iput v9, v0, Lfiz;->k:I

    nop

    nop

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    iget-boolean v0, v0, Lfiz;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->e()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    nop

    iget v9, v0, Lfiz;->i:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v9}, Lfja;->f(I)[I

    move-result-object v9

    nop

    nop

    nop

    nop

    iput-object v9, v0, Lfiz;->a:[I

    nop

    nop

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    iget-object v9, v0, Lfiz;->a:[I

    nop

    nop

    iget v10, v0, Lfiz;->j:I

    nop

    nop

    nop

    nop

    aget v9, v9, v10

    nop

    nop

    nop

    nop

    nop

    iput v9, v0, Lfiz;->l:I

    nop

    nop

    nop

    :cond_4
    :goto_5
    invoke-virtual {v3}, Lfja;->e()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_17

    nop

    nop

    nop

    :cond_5
    :goto_6
    invoke-virtual {v3}, Lfja;->e()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_16

    nop

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    iget v0, v0, Lfiz;->c:I

    nop

    invoke-virtual {v3}, Lfja;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    const/16 v9, 0x21

    nop

    nop

    if-eq v0, v9, :cond_a

    nop

    nop

    nop

    const/16 v9, 0x2c

    nop

    nop

    nop

    nop

    nop

    if-eq v0, v9, :cond_6

    nop

    nop

    nop

    const/16 v9, 0x3b

    nop

    nop

    nop

    if-eq v0, v9, :cond_16

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    iput v6, v0, Lfiz;->b:I

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_6
    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    iget-object v9, v0, Lfiz;->d:Lfiy;

    nop

    if-nez v9, :cond_7

    nop

    nop

    new-instance v9, Lfiy;

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Lfiy;-><init>()V

    iput-object v9, v0, Lfiz;->d:Lfiy;

    nop

    :cond_7
    iget-object v0, v0, Lfiz;->d:Lfiy;

    nop

    nop

    invoke-virtual {v3}, Lfja;->b()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    iput v9, v0, Lfiy;->a:I

    nop

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    iget-object v0, v0, Lfiz;->d:Lfiy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->b()I

    move-result v9

    nop

    iput v9, v0, Lfiy;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    iget-object v0, v0, Lfiz;->d:Lfiy;

    nop

    invoke-virtual {v3}, Lfja;->b()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    iput v9, v0, Lfiy;->c:I

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lfiz;->d:Lfiy;

    nop

    invoke-virtual {v3}, Lfja;->b()I

    move-result v9

    nop

    nop

    iput v9, v0, Lfiy;->d:I

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->a()I

    move-result v0

    nop

    nop

    nop

    and-int/lit16 v9, v0, 0x80

    nop

    nop

    nop

    and-int/lit8 v10, v0, 0x7

    nop

    add-int/2addr v10, v6

    nop

    nop

    int-to-double v10, v10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    double-to-int v10, v10

    nop

    nop

    nop

    iget-object v11, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    iget-object v11, v11, Lfiz;->d:Lfiy;

    nop

    nop

    and-int/lit8 v0, v0, 0x40

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    move v0, v6

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_8
    move v0, v5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, v11, Lfiy;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_9

    nop

    nop

    nop

    invoke-virtual {v3, v10}, Lfja;->f(I)[I

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, v11, Lfiy;->k:[I

    nop

    goto :goto_8

    nop

    :cond_9
    iput-object v4, v11, Lfiy;->k:[I

    nop

    :goto_8
    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lfiz;->d:Lfiy;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v3, Lfja;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    nop

    iput v9, v0, Lfiy;->j:I

    nop

    invoke-virtual {v3}, Lfja;->a()I

    invoke-virtual {v3}, Lfja;->d()V

    invoke-virtual {v3}, Lfja;->e()Z

    move-result v0

    nop

    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    iget v9, v0, Lfiz;->c:I

    nop

    nop

    nop

    add-int/2addr v9, v6

    nop

    nop

    nop

    nop

    iput v9, v0, Lfiz;->c:I

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v0, Lfiz;->e:Ljava/util/List;

    nop

    nop

    iget-object v0, v0, Lfiz;->d:Lfiy;

    nop

    nop

    nop

    nop

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_a
    invoke-virtual {v3}, Lfja;->a()I

    move-result v0

    nop

    nop

    if-eq v0, v6, :cond_15

    nop

    nop

    nop

    const/16 v9, 0xf9

    nop

    const/4 v10, 0x2

    nop

    if-eq v0, v9, :cond_11

    nop

    const/16 v9, 0xfe

    nop

    nop

    if-eq v0, v9, :cond_10

    nop

    nop

    nop

    nop

    nop

    const/16 v9, 0xff

    nop

    nop

    nop

    if-eq v0, v9, :cond_b

    nop

    invoke-virtual {v3}, Lfja;->d()V

    goto/16 :goto_6

    nop

    :cond_b
    invoke-virtual {v3}, Lfja;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v11, v5

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v12, 0xb

    nop

    nop

    nop

    nop

    if-ge v11, v12, :cond_c

    nop

    nop

    iget-object v12, v3, Lfja;->a:[B

    nop

    nop

    aget-byte v12, v12, v11

    nop

    nop

    nop

    nop

    int-to-char v12, v12

    nop

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    const-string v11, "NETSCAPE2.0"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_f

    nop

    :cond_d
    invoke-virtual {v3}, Lfja;->c()V

    iget-object v0, v3, Lfja;->a:[B

    nop

    nop

    aget-byte v11, v0, v5

    nop

    nop

    nop

    nop

    if-ne v11, v6, :cond_e

    nop

    nop

    nop

    aget-byte v11, v0, v6

    nop

    nop

    and-int/2addr v11, v9

    nop

    nop

    aget-byte v0, v0, v10

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v0, v9

    nop

    nop

    nop

    iget-object v12, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    shl-int/lit8 v0, v0, 0x8

    nop

    nop

    or-int/2addr v0, v11

    nop

    nop

    nop

    iput v0, v12, Lfiz;->m:I

    nop

    nop

    :cond_e
    iget v0, v3, Lfja;->d:I

    nop

    nop

    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->e()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_f
    invoke-virtual {v3}, Lfja;->d()V

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_10
    invoke-virtual {v3}, Lfja;->d()V

    goto/16 :goto_6

    nop

    :cond_11
    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    nop

    new-instance v9, Lfiy;

    nop

    nop

    invoke-direct {v9}, Lfiy;-><init>()V

    iput-object v9, v0, Lfiz;->d:Lfiy;

    nop

    invoke-virtual {v3}, Lfja;->a()I

    invoke-virtual {v3}, Lfja;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v3, Lfja;->c:Lfiz;

    nop

    nop

    iget-object v9, v9, Lfiz;->d:Lfiy;

    nop

    nop

    nop

    nop

    and-int/lit8 v11, v0, 0x1c

    nop

    nop

    shr-int/2addr v11, v10

    nop

    nop

    nop

    nop

    nop

    iput v11, v9, Lfiy;->g:I

    nop

    nop

    nop

    if-nez v11, :cond_12

    nop

    nop

    nop

    iput v6, v9, Lfiy;->g:I

    nop

    nop

    nop

    nop

    nop

    :cond_12
    and-int/lit8 v0, v0, 0x1

    nop

    nop

    if-eq v6, v0, :cond_13

    nop

    nop

    nop

    move v0, v5

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_13
    move v0, v6

    nop

    nop

    :goto_a
    iput-boolean v0, v9, Lfiy;->f:Z

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->b()I

    move-result v0

    nop

    nop

    nop

    const/16 v9, 0xa

    nop

    if-ge v0, v10, :cond_14

    nop

    move v0, v9

    nop

    nop

    nop

    :cond_14
    iget-object v10, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    iget-object v10, v10, Lfiz;->d:Lfiy;

    nop

    mul-int/2addr v0, v9

    nop

    nop

    iput v0, v10, Lfiy;->i:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    iput v0, v10, Lfiy;->h:I

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfja;->a()I

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_15
    invoke-virtual {v3}, Lfja;->d()V

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_16
    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    iget v7, v0, Lfiz;->c:I

    nop

    nop

    if-gez v7, :cond_17

    nop

    iput v6, v0, Lfiz;->b:I

    nop

    :cond_17
    iget-object v0, v3, Lfja;->c:Lfiz;

    nop

    nop

    nop

    nop

    :goto_b
    iget v7, v0, Lfiz;->c:I

    nop

    if-lez v7, :cond_1e

    nop

    nop

    nop

    nop

    iget v7, v0, Lfiz;->b:I

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_18

    nop

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_18
    sget-object v7, Lfrj;->a:Lfjo;

    nop

    nop

    move-object/from16 v8, p4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    sget-object v8, Lfjc;->b:Lfjc;

    nop

    nop

    nop

    if-ne v7, v8, :cond_19

    nop

    nop

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_19
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    :goto_c
    iget v8, v0, Lfiz;->g:I

    nop

    nop

    nop

    nop

    div-int v8, v8, p3

    nop

    nop

    nop

    nop

    iget v9, v0, Lfiz;->f:I

    nop

    div-int v9, v9, p2

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_1a
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    nop

    nop

    nop

    :goto_d
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    nop

    iget-object v6, v1, Lfrb;->e:Liof;

    nop

    new-instance v11, Lfjb;

    nop

    nop

    invoke-direct {v11, v6, v0, v2, v5}, Lfjb;-><init>(Liof;Lfiz;Ljava/nio/ByteBuffer;I)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    if-eq v7, v0, :cond_1c

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    if-ne v7, v0, :cond_1b

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported format: "

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", must be one of "

    nop

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_1c
    :goto_e
    iput-object v7, v11, Lfjb;->i:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    invoke-interface {v11}, Lfix;->b()V

    invoke-interface {v11}, Lfix;->a()Landroid/graphics/Bitmap;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    if-nez v15, :cond_1d

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    sget-object v14, Lfpc;->b:Lfjt;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lfrd;

    nop

    nop

    nop

    iget-object v2, v1, Lfrb;->a:Landroid/content/Context;

    nop

    nop

    new-instance v4, Lfrc;

    nop

    nop

    nop

    new-instance v5, Lfri;

    nop

    nop

    invoke-static {v2}, Lfia;->b(Landroid/content/Context;)Lfia;

    move-result-object v10

    nop

    move-object v9, v5

    nop

    nop

    nop

    nop

    nop

    move/from16 v12, p2

    nop

    nop

    nop

    nop

    move/from16 v13, p3

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v15}, Lfri;-><init>(Lfia;Lfix;IILfjt;Landroid/graphics/Bitmap;)V

    invoke-direct {v4, v5}, Lfrc;-><init>(Lfri;)V

    invoke-direct {v0, v4}, Lfrd;-><init>(Lfrc;)V

    new-instance v4, Lfrf;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Lfrf;-><init>(Lfrd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1e
    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    iget-object v0, v1, Lfrb;->d:Lfdn;

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

    :goto_14
    invoke-virtual {v1, v3}, Lfdn;->e(Lfja;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v3}, Lfdn;->e(Lfja;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    return-object v4

    nop

    nop

    nop

    :cond_1f
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "You must call setData() before parseHeader()"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_3
    throw v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    :goto_19
    iget-object v0, v1, Lfrb;->d:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    const v0, 0x8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_20

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_1c

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lfjp;)Z
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, v0}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

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

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-eqz p2, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lfrb;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lfrj;->b:Lfjo;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lfic;->b(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

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
