.class public final synthetic Lutg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lutl;


# instance fields
.field public final synthetic a:Ljava/nio/ByteBuffer;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lutg;->b:Ljava/lang/Object;

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
    iput p3, p0, Lutg;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lutg;->a:Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 9

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lutg;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, v0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_36

    nop

    nop

    :goto_4
    check-cast v0, Lutk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v0, p0, v2}, Lutg;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;I)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_7
    iget-object p0, v0, Lutk;->k:Ljava/nio/channels/ReadableByteChannel;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_22

    nop

    nop

    :goto_a
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v4, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v7

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_c
    iget-wide v2, v1, Loca;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_d
    iget-object v3, v0, Luti;->d:Lutk;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_e
    if-nez v7, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lttk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_2

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_3
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lutk;->e()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v3, v2, :cond_4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Luti;->d:Lutk;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_17
    const/16 v2, 0x8

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

    :goto_18
    if-ne v3, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v4, -0x1

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

    :goto_1a
    iget-object v0, p0, Lutg;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Luti;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    :goto_22
    add-long/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lusm;->a()V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_7

    nop

    nop

    :goto_26
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_27
    iput v5, v0, Lutk;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_29
    invoke-interface {v3, p0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2b
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, v0, Lutk;->b:Luti;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_6

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    :goto_2f
    if-nez p0, :cond_7

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_31
    new-instance v1, Lutg;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move v3, v4

    nop

    nop

    :goto_33
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v0, p0, Lutg;->c:I

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

    :goto_37
    iget-object v0, v0, Lutk;->b:Luti;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_39
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, v3, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3b
    if-nez v2, :cond_8

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    :goto_3c
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :goto_3d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    int-to-long v7, v7

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3f
    iget-object v2, v1, Loca;->b:Lsuu;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lutg;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v5, v0, Lutk;->r:I

    nop

    goto/32 :goto_46

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
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v4, v1, Loca;->e:Ljava/nio/channels/WritableByteChannel;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_45
    if-ne v3, v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v5, v5, 0x1

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

    :goto_47
    invoke-virtual {v2}, Lsuu;->isCancelled()Z

    move-result v2

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_48
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v1, v0, Luti;->a:Lutr;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v3, v0, Lutk;->k:Ljava/nio/channels/ReadableByteChannel;

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

    nop

    :goto_4d
    iget-object v3, v0, Lutk;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, p0}, Lusm;->b(Ljava/nio/ByteBuffer;)V

    :goto_4f
    goto/32 :goto_42

    nop

    nop

    :goto_50
    const-wide/16 v5, 0x0

    nop

    :goto_51
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_53
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_a
    goto/32 :goto_1a

    nop

    nop

    :goto_54
    invoke-virtual {v0, v1}, Luti;->a(Lutl;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_56
    if-ne v3, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_b
    goto/32 :goto_48

    nop

    nop

    :goto_57
    check-cast v0, Luti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_58
    add-long/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lutg;->a:Ljava/nio/ByteBuffer;

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

    nop

    :goto_5b
    iget-object v1, v1, Lutr;->a:Lrrf;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5c
    check-cast v1, Loca;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v0, p0, v2}, Lttk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput-wide v2, v1, Loca;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
