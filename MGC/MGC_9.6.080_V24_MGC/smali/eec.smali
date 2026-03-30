.class public final Leec;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/nio/channels/FileChannel;

.field public final b:Leea;

.field public final c:I

.field public final d:Z

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Z

.field private final i:Ledx;

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Lsay;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(J)V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1e

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    iget-wide v0, p0, Leec;->l:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    add-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(JLjava/nio/ByteBuffer;)V
    .locals 5

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2d

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    sub-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "free"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5
    cmp-long v0, p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    invoke-static {v0}, Ldvz;->f(Z)V

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    iput-wide v0, p0, Leec;->m:J

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    add-long/2addr p1, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-gez v0, :cond_0

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

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, v1}, Leec;->1478a1c7833aac5e360e0ba4b0c0c568m(J)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

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
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_22

    nop

    nop

    :goto_12
    iget-object v1, p0, Leec;->a:Ljava/nio/channels/FileChannel;

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

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_14
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_1e

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

    nop

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x13

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    const-wide/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

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

    :goto_1b
    iget-object v0, p0, Leec;->o:Lsay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    invoke-static {v0, v1}, Ldwb;->h(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

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

    nop

    nop

    :goto_1d
    const v1, 0x1c

    nop

    goto/32 :goto_26

    nop

    nop

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

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    iget-wide v3, p0, Leec;->m:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-wide v2, p0, Leec;->l:J

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
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

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

    :goto_25
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

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

    :goto_27
    if-gez v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    cmp-long v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-long v1, p3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    iput-object p1, p0, Leec;->o:Lsay;

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

    :goto_2d
    move v0, v2

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_6

    nop

    nop

    :goto_2f
    invoke-static {v1}, Ldvz;->f(Z)V

    goto/32 :goto_d

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_31
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_32
    add-long/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v0, p1}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m()Ljava/nio/ByteBuffer;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Leec;->c:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const-wide v2, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    iget-object v0, p0, Leec;->e:Ljava/util/List;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Leec;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Leec;->b:Leea;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    cmp-long v2, v0, v2

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

    :goto_14
    const v1, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Leec;->a(Ljava/util/List;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2, v3, v0, v1, p0}, Ledy;->f(Ljava/util/List;Leea;JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Leea;Ledx;IZZ)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Leec;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Leec;->i:Ledx;

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

    :goto_5
    iput p4, p0, Leec;->c:I

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

    :goto_6
    invoke-static {p1, p1}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 p1, 0x0

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

    :goto_b
    iput-boolean p5, p0, Leec;->d:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Leec;->b:Leea;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Leec;->e:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    iput-object p1, p0, Leec;->o:Lsay;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Leec;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    iput-boolean p6, p0, Leec;->h:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public static a(Ljava/util/List;)J
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v3, v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v5, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v3, v0

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    check-cast v4, Leee;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_f
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x17

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    :goto_16
    iget-object v4, v4, Leee;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_18
    iget-object v5, v4, Leee;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    return-wide v1

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide v1, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

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

    :goto_1d
    rem-int v0, v0, v1

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
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(J)V
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v4, p0, Leec;->m:J

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_4
    iget-wide p1, p0, Leec;->m:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/32 v2, 0x7a120

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    if-gez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v0, v1

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

    nop

    nop

    :goto_8
    add-long/2addr p1, v0

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

    nop

    :goto_9
    float-to-long v0, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    long-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Leec;->h:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1, p2, v0}, Leec;->19e596a3e324281407eb5c11093c0152m(JLjava/nio/ByteBuffer;)V

    :goto_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

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

    nop

    :goto_13
    add-long v2, v0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/32 v2, 0x3b9aca00

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Leec;->o:Lsay;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1e

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmp-long v2, v2, v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    add-long/2addr v0, p1

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
    const v1, 0x3e4ccccd    # 0.2f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    iget-wide v0, p0, Leec;->n:J

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Leec;->7ecc92917e9c4556cc19f457ddc41af8m()Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_b

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 11

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Leec;->c()V

    goto/32 :goto_49

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_38

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

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

    nop

    :goto_5
    iget-object v2, p0, Leec;->o:Lsay;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    const-wide/32 v9, 0x7fffffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_9
    iget-wide v7, p0, Leec;->m:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    int-to-long v1, v1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_c
    sub-long/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_10
    invoke-static {v3, v0}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v0

    nop

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

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_43

    nop

    :goto_13
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    invoke-static {v2}, Ldvz;->f(Z)V

    :goto_16
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_17
    const-string v4, "free"

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_18
    sub-long/2addr v7, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1a
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    iput-object v0, p0, Leec;->o:Lsay;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_1d
    cmp-long v2, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_32

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_20
    move v2, v4

    nop

    nop

    :goto_21
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    if-ltz v9, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_24
    iget-object v2, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0}, Leec;->7ecc92917e9c4556cc19f457ddc41af8m()Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, v3, v4}, Leec;->1478a1c7833aac5e360e0ba4b0c0c568m(J)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_27
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    int-to-long v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide v5, p0, Leec;->n:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v4, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide v5, p0, Leec;->n:J

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_30
    iget-wide v3, p0, Leec;->m:J

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_32
    iput-wide v5, p0, Leec;->m:J

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, v7, v8, v0}, Leec;->19e596a3e324281407eb5c11093c0152m(JLjava/nio/ByteBuffer;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_34
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_35
    sub-long/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    long-to-int v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v2, Ljava/lang/Long;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_38
    iget-boolean v0, p0, Leec;->h:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_39
    if-gez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3a
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-wide v3, p0, Leec;->l:J

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_3c
    iget-object v2, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-ltz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3e
    iget-wide v9, p0, Leec;->n:J

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3f
    sub-long v3, v5, v3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_41
    check-cast v2, Ljava/lang/Long;

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

    :goto_42
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_44
    int-to-long v5, v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_46
    add-long/2addr v7, v5

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_47
    invoke-static {v3}, Ldvz;->f(Z)V

    goto/32 :goto_45

    nop

    nop

    :goto_48
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4b
    add-int/lit8 v2, v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4c
    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4d
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v4}, Ledo;->d(Ljava/lang/String;)[B

    move-result-object v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4f
    cmp-long v2, v7, v5

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

    nop

    :goto_50
    add-long/2addr v5, v7

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_51
    cmp-long v9, v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_53
    add-long/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v3, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_55
    iget-object v2, p0, Leec;->o:Lsay;

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

    :goto_56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 9

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1
    iget-wide v5, p0, Leec;->j:J

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2
    iput-object v0, p0, Leec;->o:Lsay;

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

    :goto_3
    iget-wide v2, p0, Leec;->l:J

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    iget-wide v4, p0, Leec;->j:J

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    iget-wide v2, p0, Leec;->j:J

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_c
    int-to-long v1, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v4, p0, Leec;->m:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_11
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    iput-wide v4, p0, Leec;->m:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_17
    sub-long/2addr v0, v4

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

    :goto_18
    add-long/2addr v0, v7

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3e

    nop

    nop

    :goto_1b
    invoke-static {v3, v0}, Ldwb;->h(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

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

    :goto_1c
    const-wide/16 v7, -0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1d
    cmp-long v2, v7, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    long-to-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1f
    iget-object v1, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Leec;->a:Ljava/nio/channels/FileChannel;

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

    :goto_23
    iget-object v2, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_24
    const-string v3, "free"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_25
    sub-long/2addr v3, v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_26
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    :goto_27
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0, v1}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_29
    sub-long/2addr v0, v4

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

    nop

    :goto_2a
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, v0, v1}, Leec;->1478a1c7833aac5e360e0ba4b0c0c568m(J)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-long/2addr v4, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2e
    iget-wide v0, p0, Leec;->k:J

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2f
    iget-wide v0, p0, Leec;->k:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sub-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    if-lez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v0, p0, Leec;->n:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_33
    long-to-int v0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-wide v3, p0, Leec;->k:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_38
    iget-wide v4, p0, Leec;->n:J

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

    :goto_39
    int-to-long v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3a
    add-long/2addr v0, v7

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3b
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v3, v0}, Ldwb;->h(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

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

    nop

    nop

    :goto_3d
    iget-wide v4, p0, Leec;->m:J

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0}, Leec;->7ecc92917e9c4556cc19f457ddc41af8m()Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-boolean v2, p0, Leec;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_40
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_4

    nop

    nop

    :goto_44
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

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
.end method

.method public final d(Leee;)V
    .locals 10

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x1

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

    :goto_4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_3b

    nop

    nop

    :goto_5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_62

    nop

    nop

    :goto_7
    move v0, v3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_8
    add-long/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_9
    iget-object v1, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p1, Leee;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v6, p0, Leec;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_10
    add-long/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_11
    invoke-direct {p0, v4, v5}, Leec;->d5484163cd8d335e6b17663474ff5f2bm(J)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p1, Leee;->f:Ljava/util/Deque;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_16
    iget-wide v0, p0, Leec;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_18
    int-to-long v4, v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    if-eqz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-long v6, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_1e
    iput-wide v0, p0, Leec;->m:J

    nop

    nop

    :goto_1f
    goto/32 :goto_6c

    nop

    nop

    :goto_20
    iget-wide p0, p0, Leec;->m:J

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v4, v4, Ledf;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_23
    move v0, v2

    nop

    nop

    :goto_24
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p1, Leee;->f:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_16

    nop

    nop

    :goto_28
    iget-object v0, p1, Leee;->e:Ljava/util/List;

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

    :goto_29
    move-object v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_2b
    iput-wide v0, p0, Leec;->k:J

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, v4, v5}, Leec;->d5484163cd8d335e6b17663474ff5f2bm(J)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2e
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    :goto_2f
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_32
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_34
    const-string v5, "video/hevc"

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_36
    invoke-interface {v4, v1}, Ledx;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

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

    nop

    :goto_37
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

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

    :goto_39
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_3
    :goto_3a
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_3b
    const-wide/16 v6, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_3d
    const/4 v2, 0x1

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

    :goto_3e
    invoke-virtual {v0, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/32 :goto_42

    nop

    nop

    :goto_3f
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :cond_4
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Leec;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-wide v0, p0, Leec;->n:J

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_46
    iput-wide v4, p0, Leec;->n:J

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_47
    if-eq v0, v1, :cond_5

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_49
    goto :goto_55

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_2d

    nop

    nop

    :goto_4b
    iget-object v4, p1, Leee;->a:Ledf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4c
    iget-object v0, p1, Leee;->f:Ljava/util/Deque;

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

    nop

    nop

    :goto_4d
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v1, p1, Leee;->c:Ljava/util/List;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_51
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    :goto_53
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_56
    const v0, 0x1b

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

    :goto_57
    const-string v6, "free"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_59
    const-string v1, "mdat"

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v1, 0x61a80

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

    :goto_5c
    cmp-long p0, v0, p0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_5d
    goto/16 :goto_24

    nop

    :goto_5e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5f
    invoke-static {v2}, Ldvz;->f(Z)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_61
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_63
    iget-object v0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_64
    iget-object v1, p1, Leee;->f:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_65
    if-nez v1, :cond_7

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

    :cond_7
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-lez p0, :cond_8

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_6a
    if-eq v3, v6, :cond_9

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

    :cond_9
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-static {v0}, Ldvz;->f(Z)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v0, p1, Leee;->g:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-wide v4, p0, Leec;->n:J

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v4, p0, Leec;->i:Ledx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6f
    invoke-static {v6, v1}, Ldwb;->h(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-lez v0, :cond_a

    nop

    goto/32 :goto_62

    nop

    :cond_a
    goto/32 :goto_61

    nop

    :goto_71
    iget-object v6, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_73
    iget-object v0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_74
    const-wide v0, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_78
    invoke-static {v1}, Ledo;->d(Ljava/lang/String;)[B

    move-result-object v1

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

    :goto_79
    iget-object v0, p1, Leee;->g:Ljava/util/Deque;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7a
    invoke-static {v4}, Ldvz;->h(Ljava/lang/Object;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v1, p1, Leee;->g:Ljava/util/Deque;

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

    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_7e
    iget-object v0, p1, Leee;->f:Ljava/util/Deque;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7f
    iput-wide v0, p0, Leec;->j:J

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_80
    iget-object v0, p0, Leec;->a:Ljava/nio/channels/FileChannel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    return-void

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_43

    nop

    nop

    :goto_83
    iget-wide v4, p0, Leec;->n:J

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_84
    invoke-virtual {v6, v1, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_85
    invoke-static {}, Ledy;->b()Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-boolean v0, p0, Leec;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_87
    iput-wide v0, p0, Leec;->n:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput-wide v0, p0, Leec;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_8b
    const/16 v0, 0x10

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8d
    const-string v5, "video/avc"

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_8f
    int-to-long v6, v1

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

    :goto_90
    add-long/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop
.end method

.method public final e(Ljava/util/List;)Z
    .locals 8

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

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

    :goto_3
    invoke-static {v4}, Ldvz;->h(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v3}, Ldvz;->h(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget-object v4, v2, Leee;->f:Ljava/util/Deque;

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

    :goto_b
    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sub-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

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

    :goto_11
    cmp-long v3, v4, v6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    check-cast v2, Leee;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v1, v0

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    :goto_16
    const/4 v4, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    if-gt v3, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_1b
    if-gtz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v2}, Leec;->d(Leee;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_15

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, v2, Leee;->f:Ljava/util/Deque;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_24
    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

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

    :goto_25
    iget-object v3, v2, Leee;->f:Ljava/util/Deque;

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

    :goto_26
    const-wide/32 v6, 0xf4240

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
