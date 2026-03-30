.class public final Luts;
.super Lusy;
.source "PG"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Lutv;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Luts;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lutv;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lutv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-object v0, p0, Luts;->b:Lutv;

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lusy;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

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


# virtual methods
.method public final a()J
    .locals 4

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

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

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    cmp-long p0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-gez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const-wide v2, 0x7ffffffffffffffdL

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    add-long/2addr v0, v2

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0, v1, v2, v3}, Lj$/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x2

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

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop
.end method

.method public final b(Lusv;)V
    .locals 16

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v3, v7

    nop

    :goto_2
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v7, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v7}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    goto/32 :goto_11

    nop

    nop

    :goto_5
    const/4 v13, -0x1

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_6
    if-eqz v12, :cond_0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v10, v9, -0x1

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

    :goto_8
    invoke-virtual {v7, v14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_9
    iget-object v12, v0, Lusv;->e:Lusx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v7, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_b
    move/from16 v0, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v12, v12, Lusx;->d:I

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v7, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_10
    move-object/from16 v0, p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v7}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    iget v14, v12, Lusx;->a:I

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_15
    invoke-static {v5}, Lrrf;->ak(I)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xa

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

    :goto_19
    iget-wide v1, v0, Lusv;->a:J

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

    nop

    :goto_1a
    if-ne v10, v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6a

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v7, v0, v0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v15, -0x1

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

    :goto_1f
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v9, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_e

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v3, v0, Lusv;->g:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v7, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v7, v12}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v10, v6, Lusx;->b:I

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

    :goto_2b
    iget v15, v12, Lusx;->b:I

    nop

    nop

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v7, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_29

    nop

    nop

    :goto_2f
    if-ne v4, v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_3
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_3e

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_33
    iget v8, v0, Lusv;->b:I

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_13

    nop

    :goto_36
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v13, v12, Lusx;->c:I

    nop

    nop

    :goto_38
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v7, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    throw v5

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_69

    nop

    nop

    :goto_3c
    invoke-virtual {v7, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_5e

    nop

    nop

    :goto_3d
    move v4, v7

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_2

    nop

    nop

    :goto_41
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v7, v11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, v0, Lusv;->f:I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_44
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_45
    move/from16 p1, v0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_47
    iget v11, v6, Lusx;->c:I

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_48
    move v3, v6

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_49
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget v9, v6, Lusx;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_37

    nop

    nop

    :goto_4e
    move v4, v3

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

    nop

    :goto_4f
    iget-object v5, v0, Lusv;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_3e

    nop

    :goto_51
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-ne v10, v6, :cond_5

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

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_55
    move v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_56
    if-nez v4, :cond_6

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_57
    iget-object v6, v0, Lusv;->d:Lusx;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_58
    return-void

    nop

    :goto_59
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-eqz v12, :cond_7

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v6, v6, Lusx;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v7, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    :goto_5e
    invoke-virtual {v7, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v7, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_61

    nop

    nop

    :goto_60
    const/4 v12, -0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_61
    invoke-virtual {v7, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/16 v0, 0x2fa

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_63
    if-ne v10, v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-ne v10, v5, :cond_a

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_65
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_66
    const/4 v14, -0x1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v5}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_68
    iget v9, v0, Lusv;->h:I

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

    :goto_69
    throw v5

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6c
    if-eqz v12, :cond_b

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_6d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_6e
    if-eqz v12, :cond_c

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_c
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(JLusw;)V
    .locals 21

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    move-object/from16 v0, p0

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Luts;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    const-wide/16 v12, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    move-object/from16 v0, p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v3

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    nop

    nop

    nop

    iget-wide v6, v2, Lutv;->c:J

    nop

    nop

    nop

    nop

    const-wide/16 v8, 0x3e8

    nop

    add-long/2addr v6, v8

    nop

    nop

    cmp-long v6, v6, v4

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    if-gtz v6, :cond_0

    nop

    nop

    nop

    nop

    iput v7, v2, Lutv;->b:I

    nop

    nop

    nop

    nop

    iput-wide v4, v2, Lutv;->c:J

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_0
    iget v4, v2, Lutv;->b:I

    nop

    nop

    nop

    if-gtz v4, :cond_8

    nop

    nop

    nop

    nop

    iput v7, v2, Lutv;->b:I

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto/32 :goto_1a

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

    nop

    nop

    :catch_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
    if-nez v8, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    nop

    nop

    if-eqz v9, :cond_2

    nop

    goto/16 :goto_17

    nop

    nop

    :cond_2
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    nop

    sget-object v9, Lutu;->a:Ljava/security/MessageDigest;

    nop

    if-eqz v9, :cond_5

    nop

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    array-length v10, v8

    nop

    nop

    nop

    nop

    nop

    if-nez v10, :cond_3

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    nop

    nop

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, v2, Lutv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    if-nez v9, :cond_4

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Luts;->a:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_15
    iget-object v2, v0, Luts;->b:Lutv;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    move-wide v12, v8

    nop

    nop

    :cond_5
    :goto_17
    :try_start_2
    iget-object v8, v1, Lusw;->e:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lj$/time/Duration;->toMillis()J

    move-result-wide v8

    nop

    nop

    nop

    long-to-int v8, v8

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lusw;->f:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lj$/time/Duration;->toMillis()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    long-to-int v9, v9

    nop

    nop

    nop

    iget v10, v1, Lusw;->k:I

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v10, -0x1

    nop

    if-eqz v10, :cond_7

    nop

    nop

    if-eq v10, v7, :cond_6

    nop

    nop

    move/from16 v7, v16

    nop

    goto :goto_18

    nop

    nop

    nop

    nop

    :cond_6
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    :cond_7
    :goto_18
    iget v10, v1, Lusw;->h:I

    nop

    nop

    nop

    iget v14, v1, Lusw;->i:I

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v16 .. v16}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    invoke-static {v15}, Lrrf;->ak(I)I

    move-result v15

    nop

    nop

    nop

    nop

    iget-boolean v1, v1, Lusw;->j:Z

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-static {v1}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v1

    nop

    nop

    nop

    invoke-static {v1}, Lrrf;->ak(I)I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    move/from16 p3, v1

    nop

    const/16 v1, 0x2c0

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move v1, v14

    nop

    move/from16 v16, v15

    nop

    move-wide/from16 v14, p1

    nop

    nop

    invoke-virtual {v0, v14, v15}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v3}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const-wide/16 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v16

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, p3

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    nop

    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_d

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :cond_8
    :try_start_3
    monitor-exit v3

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_4
    monitor-exit v3

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, v0, Luts;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_0

    nop

    :goto_1e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v1, p3

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    nop

    nop

    nop

    :try_start_5
    iget-wide v4, v1, Lusw;->a:J

    nop

    nop

    nop

    nop

    const-string v6, "Request header size is negative"

    nop

    nop

    invoke-static {v4, v5, v6}, Lrrf;->ai(JLjava/lang/String;)V

    long-to-double v4, v4

    nop

    nop

    nop

    nop

    nop

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    nop

    div-double/2addr v4, v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v3, v7}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    const/16 v10, 0x64

    nop

    nop

    nop

    const/16 v15, 0x19

    nop

    nop

    nop

    const/16 v16, 0x3

    nop

    nop

    nop

    nop

    const/16 v11, 0xa

    nop

    nop

    nop

    nop

    const/16 v12, 0x32

    nop

    nop

    nop

    if-eqz v6, :cond_a

    nop

    move v4, v7

    nop

    nop

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    nop

    :cond_a
    invoke-static {v4, v5, v7, v11}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_b

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    goto :goto_21

    nop

    :cond_b
    invoke-static {v4, v5, v11, v15}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    nop

    move/from16 v4, v16

    nop

    goto :goto_21

    nop

    nop

    nop

    :cond_c
    invoke-static {v4, v5, v15, v12}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_d

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto :goto_21

    nop

    :cond_d
    invoke-static {v4, v5, v12, v10}, Lrrf;->aj(DII)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_e

    nop

    nop

    const/4 v4, 0x5

    nop

    nop

    goto :goto_21

    nop

    :cond_e
    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v5, "Request body size is negative"

    nop

    const-wide/16 v13, -0x1

    nop

    invoke-static {v13, v14, v5}, Lrrf;->ai(JLjava/lang/String;)V

    const-wide/high16 v13, -0x40b0000000000000L    # -9.765625E-4

    nop

    nop

    nop

    invoke-static {v13, v14, v11, v12}, Lrrf;->aj(DII)Z

    move-result v5

    nop

    nop

    const/16 v17, 0x7

    nop

    nop

    nop

    nop

    const/16 v18, 0x8

    nop

    const/16 v6, 0x1388

    nop

    nop

    nop

    const/16 v10, 0x3e8

    nop

    const/16 v15, 0x1f4

    nop

    const/16 v11, 0xc8

    nop

    nop

    if-eqz v5, :cond_f

    nop

    nop

    nop

    move/from16 v5, v16

    nop

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    :cond_f
    invoke-static {v13, v14, v12, v11}, Lrrf;->aj(DII)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_10

    nop

    nop

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    :cond_10
    invoke-static {v13, v14, v11, v15}, Lrrf;->aj(DII)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_11

    nop

    nop

    const/4 v5, 0x5

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    nop

    :cond_11
    invoke-static {v13, v14, v15, v10}, Lrrf;->aj(DII)Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_12

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x6

    nop

    nop

    goto :goto_22

    nop

    :cond_12
    invoke-static {v13, v14, v10, v6}, Lrrf;->aj(DII)Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_13

    nop

    nop

    nop

    move/from16 v5, v17

    nop

    goto :goto_22

    nop

    :cond_13
    move/from16 v5, v18

    nop

    nop

    nop

    :goto_22
    iget-wide v13, v1, Lusw;->b:J

    nop

    nop

    const-string v6, "Response header size is negative"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13, v14, v6}, Lrrf;->ai(JLjava/lang/String;)V

    long-to-double v13, v13

    nop

    nop

    nop

    nop

    nop

    div-double/2addr v13, v8

    nop

    invoke-static {v13, v14, v3, v7}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_14

    nop

    nop

    move v3, v7

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_14
    const/16 v6, 0xa

    nop

    invoke-static {v13, v14, v7, v6}, Lrrf;->aj(DII)Z

    move-result v19

    nop

    nop

    nop

    nop

    if-eqz v19, :cond_15

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    :cond_15
    const/16 v3, 0x19

    nop

    invoke-static {v13, v14, v6, v3}, Lrrf;->aj(DII)Z

    move-result v20

    nop

    if-eqz v20, :cond_16

    nop

    move/from16 v3, v16

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    :cond_16
    invoke-static {v13, v14, v3, v12}, Lrrf;->aj(DII)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_17

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    :cond_17
    const/16 v3, 0x64

    nop

    nop

    invoke-static {v13, v14, v12, v3}, Lrrf;->aj(DII)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_18

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    :cond_18
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v13, v1, Lusw;->c:J

    nop

    nop

    nop

    const-string v6, "Response body size is negative"

    nop

    nop

    nop

    invoke-static {v13, v14, v6}, Lrrf;->ai(JLjava/lang/String;)V

    long-to-double v13, v13

    nop

    div-double/2addr v13, v8

    nop

    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    cmpl-double v6, v13, v8

    nop

    nop

    if-nez v6, :cond_19

    nop

    nop

    move v11, v7

    nop

    nop

    goto/16 :goto_24

    nop

    :cond_19
    if-lez v6, :cond_1a

    nop

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    nop

    nop

    cmpg-double v6, v13, v8

    nop

    if-gez v6, :cond_1a

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    const/16 v6, 0xa

    nop

    invoke-static {v13, v14, v6, v12}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1b

    nop

    nop

    nop

    nop

    move/from16 v11, v16

    nop

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    invoke-static {v13, v14, v12, v11}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1c

    nop

    nop

    nop

    const/4 v11, 0x4

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    :cond_1c
    invoke-static {v13, v14, v11, v15}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    if-eqz v6, :cond_1d

    nop

    nop

    const/4 v11, 0x5

    nop

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    :cond_1d
    invoke-static {v13, v14, v15, v10}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_1e

    nop

    nop

    nop

    const/4 v11, 0x6

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    :cond_1e
    const/16 v6, 0x1388

    nop

    nop

    nop

    invoke-static {v13, v14, v10, v6}, Lrrf;->aj(DII)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1f

    nop

    nop

    nop

    nop

    move/from16 v11, v17

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    :cond_1f
    move/from16 v11, v18

    nop

    nop

    nop

    :goto_24
    iget v6, v1, Lusw;->d:I

    nop

    nop

    nop

    nop

    iget-object v8, v1, Lusw;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Lutu;->a:Ljava/security/MessageDigest;

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final d(JLusu;Lusx;)V
    .locals 33

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v3, ","

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

    :goto_3
    const-string v5, "QUIC"

    nop

    nop

    nop

    :try_start_0
    new-instance v6, Lutt;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v0, Lusu;->d:Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v6, v7}, Lutt;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lusx;->a:I

    nop

    iget v8, v1, Lusx;->b:I

    nop

    nop

    nop

    iget v9, v1, Lusx;->c:I

    nop

    iget v1, v1, Lusx;->d:I

    nop

    nop

    nop

    nop

    iget v10, v0, Lusu;->c:I

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    if-eqz v10, :cond_1

    nop

    nop

    nop

    nop

    const/4 v13, 0x2

    nop

    if-eq v10, v12, :cond_2

    nop

    if-eq v10, v13, :cond_0

    nop

    nop

    nop

    nop

    const/4 v13, 0x4

    nop

    nop

    nop

    goto :goto_4

    nop

    :cond_0
    const/4 v13, 0x3

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    move v13, v12

    nop

    :cond_2
    :goto_4
    iget-boolean v10, v0, Lusu;->a:Z

    nop

    nop

    nop

    const-string v14, "connection_options"

    nop

    nop

    nop

    nop

    nop

    const-class v15, Ljava/lang/String;

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    invoke-virtual {v6, v5, v14, v12, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    check-cast v14, Ljava/lang/String;

    nop

    nop

    invoke-static {v14}, Lutt;->b(Ljava/lang/String;)Z

    move-result v15

    nop

    const/4 v11, -0x1

    nop

    nop

    nop

    nop

    if-nez v15, :cond_6

    nop

    nop

    nop

    new-instance v15, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    array-length v12, v14

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_5
    if-ge v11, v12, :cond_4

    nop

    nop

    nop

    move/from16 v18, v12

    nop

    aget-object v12, v14, v11

    nop

    nop

    nop

    move-object/from16 v19, v14

    nop

    nop

    nop

    nop

    sget-object v14, Lutt;->a:Ljava/util/Set;

    nop

    nop

    nop

    move/from16 v20, v10

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-interface {v14, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    if-eqz v10, :cond_3

    nop

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    move/from16 v12, v18

    nop

    move-object/from16 v14, v19

    nop

    nop

    nop

    nop

    nop

    move/from16 v10, v20

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    move/from16 v20, v10

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    nop

    nop

    nop

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    if-eqz v12, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v12, Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_5

    nop

    nop

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    goto :goto_6

    nop

    nop

    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_6
    move/from16 v20, v10

    nop

    nop

    :goto_7
    const-string v3, "store_server_configs_in_properties"

    nop

    nop

    nop

    nop

    nop

    const-class v10, Ljava/lang/Boolean;

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    invoke-virtual {v6, v5, v3, v11, v10}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-static {v3}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v3

    nop

    nop

    invoke-static {v3}, Lrrf;->ak(I)I

    move-result v3

    nop

    const-string v10, "max_server_configs_stored_in_properties"

    nop

    const/4 v11, -0x1

    nop

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    const-class v12, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v6, v5, v10, v11, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    nop

    check-cast v10, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    const-string v12, "idle_connection_timeout_seconds"

    nop

    nop

    nop

    nop

    nop

    const-class v15, Ljava/lang/Integer;

    nop

    invoke-virtual {v6, v5, v12, v11, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Integer;

    nop

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    nop

    const-string v15, "goaway_sessions_on_ip_change"

    nop

    nop

    move/from16 v17, v12

    nop

    nop

    const-class v12, Ljava/lang/Boolean;

    nop

    move/from16 v18, v10

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    invoke-virtual {v6, v5, v15, v10, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-static {v12}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v10

    nop

    nop

    invoke-static {v10}, Lrrf;->ak(I)I

    move-result v10

    nop

    nop

    const-string v12, "close_sessions_on_ip_change"

    nop

    nop

    const-class v15, Ljava/lang/Boolean;

    nop

    nop

    nop

    move/from16 v19, v10

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    invoke-virtual {v6, v5, v12, v10, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v10

    nop

    nop

    invoke-static {v10}, Lrrf;->ak(I)I

    move-result v10

    nop

    const-string v12, "migrate_sessions_on_network_change_v2"

    nop

    nop

    nop

    nop

    nop

    const-class v15, Ljava/lang/Boolean;

    nop

    nop

    nop

    move/from16 v21, v10

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v5, v12, v10, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Boolean;

    nop

    invoke-static {v12}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v10

    nop

    nop

    invoke-static {v10}, Lrrf;->ak(I)I

    move-result v10

    nop

    nop

    nop

    const-string v12, "migrate_sessions_early_v2"

    nop

    nop

    nop

    nop

    const-class v15, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    move/from16 v22, v10

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v5, v12, v10, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-static {v12}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v10

    nop

    nop

    nop

    invoke-static {v10}, Lrrf;->ak(I)I

    move-result v10

    nop

    const-string v12, "disable_bidirectional_streams"

    nop

    nop

    nop

    nop

    const-class v15, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    move/from16 v23, v10

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    invoke-virtual {v6, v5, v12, v10, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-static {v12}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v10

    nop

    invoke-static {v10}, Lrrf;->ak(I)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    const-string v12, "max_time_before_crypto_handshake_seconds"

    nop

    nop

    nop

    nop

    const-class v15, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v6, v5, v12, v11, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    const-string v15, "max_idle_time_before_crypto_handshake_seconds"

    nop

    move/from16 v24, v12

    nop

    nop

    nop

    nop

    const-class v12, Ljava/lang/Integer;

    nop

    invoke-virtual {v6, v5, v15, v11, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    nop

    nop

    const-string v15, "enable_socket_recv_optimization"

    nop

    move/from16 v25, v12

    nop

    nop

    const-class v12, Ljava/lang/Boolean;

    nop

    nop

    move/from16 v26, v10

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    invoke-virtual {v6, v5, v15, v10, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lrrf;->ak(I)I

    move-result v5

    nop

    nop

    const-string v10, "AsyncDNS"

    nop

    nop

    nop

    nop

    const-class v12, Ljava/lang/Boolean;

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v10, v2, v15, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-static {v10}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v10

    nop

    nop

    nop

    nop

    invoke-static {v10}, Lrrf;->ak(I)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    const-class v12, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v6, v4, v2, v15, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Boolean;

    nop

    invoke-static {v2}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v2

    nop

    invoke-static {v2}, Lrrf;->ak(I)I

    move-result v2

    nop

    nop

    nop

    nop

    const-string v12, "delay_ms"

    nop

    nop

    nop

    nop

    nop

    const-class v15, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v4, v12, v11, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    const-string v15, "max_expired_time_ms"

    nop

    nop

    nop

    move/from16 v27, v12

    nop

    const-class v12, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v6, v4, v15, v11, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Integer;

    nop

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    nop

    const-string v15, "max_stale_uses"

    nop

    nop

    nop

    move/from16 v28, v12

    nop

    nop

    const-class v12, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v6, v4, v15, v11, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Ljava/lang/Integer;

    nop

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    const-string v15, "allow_other_network"

    nop

    nop

    nop

    move/from16 v29, v12

    nop

    nop

    const-class v12, Ljava/lang/Boolean;

    nop

    move/from16 v30, v2

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v4, v15, v2, v12}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    check-cast v12, Ljava/lang/Boolean;

    nop

    invoke-static {v12}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrrf;->ak(I)I

    move-result v2

    nop

    const-string v12, "persist_to_disk"

    nop

    nop

    nop

    const-class v15, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    move/from16 v31, v2

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-virtual {v6, v4, v12, v2, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Ljava/lang/Boolean;

    nop

    invoke-static {v12}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrrf;->ak(I)I

    move-result v2

    nop

    nop

    nop

    nop

    const-string v12, "persist_delay_ms"

    nop

    nop

    nop

    nop

    const-class v15, Ljava/lang/Integer;

    nop

    invoke-virtual {v6, v4, v12, v11, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    check-cast v11, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    nop

    const-string v12, "use_stale_on_name_not_resolved"

    nop

    const-class v15, Ljava/lang/Boolean;

    nop

    nop

    nop

    move/from16 v32, v11

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v4, v12, v11, v15}, Lutt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    invoke-static {v4}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lrrf;->ak(I)I

    move-result v4

    nop

    nop

    nop

    const-class v12, Ljava/lang/Boolean;

    nop

    const-string v15, "disable_ipv6_on_wifi"

    nop

    nop

    nop

    nop

    iget-object v11, v6, Lutt;->b:Lorg/json/JSONObject;

    nop

    nop

    nop

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v11

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    goto :goto_a

    nop

    :goto_9
    :try_start_1
    iget-object v6, v6, Lutt;->b:Lorg/json/JSONObject;

    nop

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_a
    :try_start_2
    check-cast v12, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Lrrf;->al(Ljava/lang/Boolean;)I

    move-result v6

    nop

    invoke-static {v6}, Lrrf;->ak(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    iget-wide v11, v0, Lusu;->e:J

    nop

    nop

    nop

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    nop

    nop

    const/16 v15, 0x2bf

    nop

    nop

    nop

    invoke-virtual {v0, v15}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-wide v15, v11

    nop

    nop

    nop

    move-wide/from16 v11, p1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v11, v12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v1, 0x3

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    const/4 v7, 0x1

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v8, v20

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v7}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v14}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v18

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v17

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v19

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v21

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v22

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v23

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v26

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v24

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v25

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v30

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v27

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v28

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v29

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v31

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move/from16 v1, v32

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-wide v1, v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    nop

    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v0, p3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x13

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v4, "StaleDNS"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_0

    nop

    :goto_12
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    const-string v2, "enable"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v11, :cond_8

    nop

    goto/32 :goto_9

    nop

    nop

    :catch_1
    :cond_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    move-object/from16 v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method
