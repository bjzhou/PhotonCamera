.class public Livt;
.super Ljava/lang/Thread;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Z

.field public c:J

.field private final d:Landroid/media/AudioRecord;

.field private final e:Livq;

.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "ivt"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sput-object v0, Livt;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Livq;Landroid/media/AudioRecord;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_3
    iput-object p1, p0, Livt;->e:Livq;

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

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Livt;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x800

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    iput-object p2, p0, Livt;->d:Landroid/media/AudioRecord;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Livt;->f:[B

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    new-array v0, v0, [B

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Livt;->c:J

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

    :goto_13
    const v0, 0x16

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


# virtual methods
.method public final run()V
    .locals 15

    goto/32 :goto_18

    nop

    nop

    :goto_0
    const/16 v4, 0x796

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    if-nez v5, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v5, v1, Livq;->b:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

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

    :goto_3
    const/16 v6, 0x7a1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5
    iget-boolean v5, v1, Livq;->c:Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v4, "Could not find a valid buffer, will drop frame!"

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

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

    :goto_9
    move v14, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean v3, p0, Livt;->b:Z

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    sget-object v3, Livt;->a:Lsdb;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_e
    sget-object v1, Livq;->a:Lsdb;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_15

    nop

    :goto_10
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v4, -0x2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_13
    const/16 v5, 0x7a0

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

    :goto_14
    goto/16 :goto_2d

    nop

    nop

    :goto_15
    goto/32 :goto_51

    nop

    nop

    :goto_16
    iget-object v1, p0, Livt;->e:Livq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v3, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v2, v1, Livq;->d:Z

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

    :goto_1a
    iget-object v8, v1, Livq;->b:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1b
    iput-boolean v2, v1, Livq;->c:Z

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1, v4}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1, v3}, Lscz;->s(Ljava/lang/String;)V

    :goto_21
    :try_start_2
    iget-object v1, p0, Livt;->d:Landroid/media/AudioRecord;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v3, "Error reading audio"

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Livt;->d:Landroid/media/AudioRecord;

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

    :goto_25
    const/4 v4, -0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ltz v9, :cond_4

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

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

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

    :goto_28
    check-cast v1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v5, 0x800

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2a
    add-long v12, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2b
    iget-wide v6, p0, Livt;->c:J

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0, v5, v6, v4, v1}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_2d
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_2d

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v1, v4, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_34
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_6
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-wide v4, p0, Livt;->c:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_61

    nop

    nop

    :goto_38
    const/16 v3, 0x7a2

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_39
    iput-boolean v2, p0, Livt;->b:Z

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v4, v2, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3b
    cmp-long v1, v4, v6

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3d
    sget-object v4, Livq;->a:Lsdb;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    aget-object v5, v5, v9

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3f
    iget-object v4, p0, Livt;->f:[B

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

    :goto_40
    const-string v0, "%s"

    nop

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

    :goto_41
    if-eq v1, v4, :cond_7

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_43
    const/16 v6, 0x797

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_44
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_45
    const-string v5, "MediaCodec got into an illegal state"

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Livt;->d:Landroid/media/AudioRecord;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v0, v4, v5, v3, v1}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_48
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-boolean v1, p0, Livt;->b:Z

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4b
    iget-boolean v4, v1, Livq;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4c
    move v14, v5

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v4, Livt;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_50
    iput-boolean v2, p0, Livt;->b:Z

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

    :goto_51
    sget-object v1, Livt;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v4, p0, Livt;->f:[B

    nop

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

    :goto_53
    iget-boolean v5, v1, Livq;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_54
    invoke-static {v5, v6, v4, v1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_56
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/16 v11, 0x800

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_5a
    const-wide/16 v6, 0x3e8

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v1, p0, Livt;->d:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_48

    nop

    nop

    nop

    :catch_2
    move-exception v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_9
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    div-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    :goto_60
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

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

    :goto_63
    iget-object v6, v1, Livq;->b:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_64
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_65
    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_66
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_67
    const-wide/16 v7, -0x1

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

    :goto_68
    array-length v4, v4

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

    :goto_69
    invoke-interface {v1, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_6b
    const/4 v3, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method
