.class public final Lpei;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpej;


# instance fields
.field private final a:Lpnv;

.field private final b:Ljava/util/List;

.field private c:I


# direct methods
.method public constructor <init>(Lpnv;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lpei;->c:I

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
    iput-object p1, p0, Lpei;->a:Lpnv;

    nop

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

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lpei;->b:Ljava/util/List;

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p1}, Lpnv;->g()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lpob; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lpoc; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lpnz; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lpnu;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lpei;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_5
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p0}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lpnx;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v3, v2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_10
    iput v3, p0, Lpei;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    iget-object v0, p0, Lpei;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lpei;->a:Lpnv;

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

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    iget v2, p0, Lpei;->c:I

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

    :goto_18
    iget v1, p0, Lpei;->c:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lpei;->c:I

    nop

    nop

    goto/32 :goto_1

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

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
