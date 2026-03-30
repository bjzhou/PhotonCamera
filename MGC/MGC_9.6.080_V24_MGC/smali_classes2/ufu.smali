.class public final Lufu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    sput-boolean v0, Lufu;->a:Z

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1
    move v1, v2

    nop

    :goto_2
    goto/32 :goto_1f

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_9
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    :goto_b
    if-ne v3, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v3, "auto"

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

    :goto_e
    const-string v3, "\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_f
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v3, "on"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_2
    goto/32 :goto_42

    nop

    :goto_14
    const v4, 0x1ad6f

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "kotlinx.coroutines.stacktrace.recovery"

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

    nop

    :goto_17
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sput-object v0, Lufu;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_19
    const v1, 0x17

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v4, 0xddf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    throw v1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v3, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    sput-boolean v1, Lufu;->b:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_1d

    nop

    nop

    :goto_25
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_26
    const-string v3, "off"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_27
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne v3, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v3, :cond_6

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v4, 0x2dddaf

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0, v1}, Luch;->S(Ljava/lang/String;Z)Z

    move-result v0

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

    :goto_2f
    invoke-static {v0, v2, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_22

    nop

    nop

    :goto_31
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v3, v4, :cond_7

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_34
    move v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_2

    nop

    nop

    :goto_36
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_37
    const-string v0, "kotlinx.coroutines.debug"

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_38
    if-nez v3, :cond_8

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_8
    :goto_39
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3a
    const-string v2, "System property \'kotlinx.coroutines.debug\' has unrecognized value \'"

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

    :goto_3b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v0}, Lunw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_3f
    if-nez v3, :cond_9

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    :goto_40
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_41
    if-nez v3, :cond_b

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3d

    nop

    nop

    :goto_43
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop
.end method
