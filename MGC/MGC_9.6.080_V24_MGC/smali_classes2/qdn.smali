.class public final synthetic Lqdn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqdo;


# instance fields
.field public final synthetic a:Lexq;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lexq;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

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

    :goto_1
    iput-object p1, p0, Lqdn;->a:Lexq;

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

    nop

    :goto_3
    iput p2, p0, Lqdn;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqdn;->a:Lexq;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_3
    if-ne v0, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v2, v0}, Lexq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

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

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_8
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_4

    nop

    goto/32 :goto_2a

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "MicroVideo"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lqdn;->b:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v2, v0}, Lexq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    return-object v1

    nop

    nop

    :goto_17
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v2, "http://ns.google.com/photos/1.0/camera/"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_10

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    if-lez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0, v2, v0}, Lexq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lqdn;->a:Lexq;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v0, "MotionPhoto"

    nop

    nop

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

    :goto_26
    if-lez p0, :cond_6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    const-string v0, "MicroVideoOffset"

    nop

    nop

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

    :goto_29
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lqdn;->a:Lexq;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2c
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_7

    nop

    nop
.end method
