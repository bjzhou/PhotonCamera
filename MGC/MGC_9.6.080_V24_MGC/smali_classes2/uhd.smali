.class final Luhd;
.super Luhb;
.source "PG"


# instance fields
.field private final a:Luhf;

.field private final f:Luhe;

.field private final g:Luff;

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Luhf;Luhe;Luff;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Luhb;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object p2, p0, Luhd;->f:Luhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Luhd;->g:Luff;

    nop

    nop

    nop

    goto/32 :goto_4

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
    iput-object p4, p0, Luhd;->h:Ljava/lang/Object;

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

    :goto_5
    iput-object p1, p0, Luhd;->a:Luhf;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Luhd;->a:Luhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, p0}, Luhf;->eJ(Luhe;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

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

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Luhd;->f:Luhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Luhd;->g:Luff;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    :goto_6
    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0}, Luhf;->a(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v1}, Luhf;->D(Lunm;)Luff;

    move-result-object v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1}, Luhf;->D(Lunm;)Luff;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0, v2, p0}, Luhf;->N(Luhe;Luff;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    const/4 v3, 0x2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    :goto_15
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Luhd;->h:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    sget-boolean p1, Lufu;->a:Z

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v0, Luhe;->a:Luhk;

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

    :goto_1c
    invoke-virtual {v2, v3}, Lunm;->j(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0, v1, p0}, Luhf;->N(Luhe;Luff;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method
