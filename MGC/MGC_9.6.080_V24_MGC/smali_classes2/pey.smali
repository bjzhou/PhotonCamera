.class public final Lpey;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lpri;

.field private final b:Lpcu;


# direct methods
.method public constructor <init>(Lpri;Lpcu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lpey;->a:Lpri;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p2, p0, Lpey;->b:Lpcu;

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


# virtual methods
.method public final a(I)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "ERROR"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lpri;->b()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    const-string p1, "ERROR"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "Failed to set audio restriction for camera "

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, "audio restriction on camera device is NULL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_14
    :try_start_0
    iget-object p1, p0, Lpey;->a:Lpri;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpri;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lpey;->a:Lpri;

    nop

    invoke-interface {p1, v0}, Lpri;->e(I)V
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lpey;->a:Lpri;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
