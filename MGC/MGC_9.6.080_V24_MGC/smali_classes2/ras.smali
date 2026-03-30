.class public final Lras;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqzo;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lras;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lrnb;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lras;->b(Lrnb;)Ljava/io/InputStream;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final b(Lrnb;)Ljava/io/InputStream;
    .locals 4

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_0
    iget-object v1, p1, Lrnb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p1, Lrnb;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto/32 :goto_39

    nop

    nop

    :goto_3
    new-instance v1, Lqzl;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v3, Lrbb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    :goto_c
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    iget-object v0, p1, Lrnb;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lqrg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ljava/io/BufferedInputStream;

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

    nop

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Lrnb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Ljava/io/InputStream;

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

    nop

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    iget-boolean p0, p0, Lras;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_19
    invoke-direct {v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v3}, Lrbb;->b()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_21

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_42

    nop

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_17

    nop

    nop

    :goto_28
    iget-object v1, p1, Lrnb;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_29
    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_2a
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p0}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

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

    :goto_2f
    check-cast v1, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_30
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_34
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v0, Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_39
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v0, v1}, Lrax;->e(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v1, :cond_6

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0xa

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_40
    invoke-direct {v1, v0, v2}, Lqzl;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_42
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

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
.end method
