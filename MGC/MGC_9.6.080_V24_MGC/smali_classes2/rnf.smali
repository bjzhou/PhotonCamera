.class public final Lrnf;
.super Loha;
.source "PG"


# direct methods
.method public constructor <init>(I)V
    .locals 6

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    const-string v3, ")"

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v3, Lrng;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Loha;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v3, Lrng;->a:Ljava/util/Map;

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

    :goto_b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_34

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

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v3, "Install Error(%d): %s"

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

    :goto_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

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

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v3, " (https://developer.android.com/reference/com/google/android/play/core/install/model/InstallErrorCode#"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    :goto_14
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v3, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->jDQBRXJKWC:Ljava/lang/String;

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

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

    :goto_1a
    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    :goto_1e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_20
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    throw p0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    :goto_24
    goto/32 :goto_13

    nop

    nop

    :goto_25
    const v1, 0x1f

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

    :goto_26
    sget-object v3, Lrng;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    sget-object v5, Lrng;->b:Ljava/util/Map;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_28
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string p1, "errorCode should not be 0."

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v3, Ljava/lang/String;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

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

    :goto_2f
    const/4 v3, 0x0

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

    nop

    :goto_30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

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

    :goto_31
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
