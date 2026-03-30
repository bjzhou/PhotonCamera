.class final Lbuh;
.super Lbug;
.source "PG"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lucv;


# instance fields
.field private final b:Lbun;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbun;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2, p3}, Lbug;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lbuh;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbuh;->b:Lbun;

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
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lbuh;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, p1, v3, v2, p0}, Lbul;->b(ILbuz;Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v3, Lbuk;->b:Lbuz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object v0, p0, Lbuh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, v1, Lbul;->d:Lbuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v1, Lbul;->d:Lbuk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lbuj;->a()Ljava/lang/Object;

    move-result-object v2

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

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_e
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, p0}, Lbuk;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    move p1, p0

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v1, Lbul;->d:Lbuk;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, v1, Lbul;->d:Lbuk;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lbug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    iget-object v1, v1, Lbun;->a:Lbul;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    iget-object v3, v1, Lbul;->d:Lbuk;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    goto :goto_2a

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    iget p0, p0, Lbuk;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop

    :goto_21
    iget-boolean v2, v1, Lbuj;->c:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Lbuh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    iget-object v1, p0, Lbuh;->b:Lbun;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    iput p0, v1, Lbul;->e:I

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method
