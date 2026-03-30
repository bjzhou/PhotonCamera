.class final Ldze;
.super Landroid/media/MediaDataSource;
.source "PG"


# instance fields
.field a:J

.field final synthetic b:Ldzf;


# direct methods
.method public constructor <init>(Ldzf;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldze;->b:Ldzf;

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

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final getSize()J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v0, -0x1

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    const v1, 0x17

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final readAt(J[BII)I
    .locals 6

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 p1, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p5, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    return v3

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    iget-wide v4, p0, Ldze;->a:J

    nop

    cmp-long v2, v4, p1

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    cmp-long v0, v4, v0

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Ldze;->b:Ldzf;

    nop

    nop

    invoke-virtual {v0}, Ldzf;->available()I

    move-result v0

    nop

    nop

    int-to-long v0, v0

    nop

    nop

    nop

    add-long/2addr v4, v0

    nop

    cmp-long v0, p1, v4

    nop

    nop

    if-gez v0, :cond_1

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    return v3

    nop

    nop

    :cond_2
    :goto_4
    iget-object v0, p0, Ldze;->b:Ldzf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, p2}, Ldzf;->c(J)V

    iput-wide p1, p0, Ldze;->a:J

    nop

    :cond_3
    iget-object p1, p0, Ldze;->b:Ldzf;

    nop

    nop

    invoke-virtual {p1}, Ldzf;->available()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-le p5, p1, :cond_4

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ldze;->b:Ldzf;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ldzf;->available()I

    move-result p5

    nop

    nop

    nop

    :cond_4
    iget-object p1, p0, Ldze;->b:Ldzf;

    nop

    nop

    nop

    invoke-virtual {p1, p3, p4, p5}, Ldzf;->read([BII)I

    move-result p1

    nop

    nop

    nop

    nop

    if-ltz p1, :cond_6

    nop

    nop

    iget-wide p2, p0, Ldze;->a:J

    nop

    nop

    nop

    nop

    nop

    int-to-long p4, p1

    nop

    nop

    add-long/2addr p2, p4

    nop

    nop

    iput-wide p2, p0, Ldze;->a:J

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    if-ltz v2, :cond_5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    return v3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    return p1

    nop

    nop

    nop

    nop

    :catch_0
    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

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

    :goto_e
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_7
    goto/32 :goto_15

    nop

    :goto_10
    iput-wide p1, p0, Ldze;->a:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    cmp-long v2, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
