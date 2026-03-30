.class public final enum Lrpp;
.super Lcom/google/ar/core/ArCoreApk$Availability;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    const/4 v0, 0x2

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

    :goto_6
    const v0, 0x8

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;IILcom/google/ar/core/ArCoreApk-IA;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v2, "UNKNOWN_TIMED_OUT"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final isUnknown()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
