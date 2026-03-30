.class public final Ldiy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/text/Layout$Alignment;

.field public static final b:Landroid/text/Layout$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-object v5, v0, v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    array-length v3, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v6, v7}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    const-string v7, "ALIGN_LEFT"

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    sput-object v2, Ldiy;->b:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    move-result-object v6

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

    :goto_a
    move-object v2, v5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    :goto_d
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

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

    nop

    :goto_f
    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    :goto_12
    move-object v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_13
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v7, "ALIGN_RIGHT"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lt v4, v3, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v1, Ldiy;->a:Landroid/text/Layout$Alignment;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_11

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v6, v7}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

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

    nop

    :goto_20
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v4, v4, 0x1

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
.end method
