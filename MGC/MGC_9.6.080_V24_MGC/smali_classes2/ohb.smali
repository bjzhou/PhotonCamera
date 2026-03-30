.class public final Lohb;
.super Ljava/lang/Exception;
.source "PG"


# instance fields
.field private final a:Lwu;


# direct methods
.method public constructor <init>(Lwu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lohb;->a:Lwu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v5}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    check-cast v4, Lohw;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v5}, Lofz;->b()Z

    move-result v6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v5, p0, Lohb;->a:Lwu;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_5
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    const-string v4, ": "

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    move v3, v2

    nop

    :goto_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

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

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "Some of the queried APIs are unavailable. "

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_13
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    and-int/2addr v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    xor-int/2addr v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_18
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_34

    nop

    nop

    :goto_19
    invoke-virtual {v4}, Lohw;->a()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_1e
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

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

    :goto_21
    check-cast v5, Lofz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_23
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_28
    const-string v1, "; "

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    :goto_2c
    invoke-virtual {v1}, Lwu;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lohb;->a:Lwu;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x1d

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

    nop

    :goto_33
    const-string v1, "None of the queried APIs are available. "

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v5, v4}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_21

    nop

    nop
.end method
