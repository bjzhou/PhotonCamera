.class public Lggr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


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

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lggr;->a:Lsdb;

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
    const-string v0, "ggr"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lt v2, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    array-length v0, p3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v4, "\n\tat "

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

    :goto_b
    aget-object v2, p3, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

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

    :goto_d
    aget-object v3, p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p3, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p3, 0x3a

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_13
    if-nez p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v1, v0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v2, v1

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    :goto_18
    invoke-static {p0, p1, p2, p3}, Lggr;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    :goto_1d
    const-string p3, "\nCaused by: "

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1e
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_8

    nop

    :goto_21
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v1, v1, 0x1

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

    nop

    :goto_25
    array-length v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_26
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_30

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

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

    :goto_29
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2a
    invoke-static {v2, p1, p2, v3}, Lggr;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    :goto_2b
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    const-string v3, "\nSuppressed: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2

    nop

    :goto_30
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object p3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
