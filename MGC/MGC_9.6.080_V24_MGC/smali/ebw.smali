.class public final Lebw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lehr;


# instance fields
.field public a:Landroid/os/Bundle;

.field private final b:Lehs;

.field private c:Z

.field private final d:Ltxs;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()Lebx;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lebw;->d:Ltxs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lebx;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lehs;Leci;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lebw;->d:Ltxs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p2, p1}, Ltxz;-><init>(Luaz;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lebw;->b:Lehs;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p2, v0}, Lmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lmx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    new-instance p2, Ltxz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lebw;->33f5b80483094659737b73d90f80a8a4m()Lebx;

    move-result-object v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7

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

    :goto_4
    if-nez v1, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    iput-boolean v1, p0, Lebw;->c:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

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

    :goto_7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

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

    :goto_a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    invoke-interface {v2}, Lehr;->a()Landroid/os/Bundle;

    move-result-object v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

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

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_12
    iget-object v1, p0, Lebw;->a:Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0xa

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    check-cast v2, Lebq;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    iget-object v2, v2, Lebq;->f:Lehr;

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

    :goto_22
    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_24
    iget-object v1, v1, Lebx;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lebw;->a:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

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

    nop

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lebw;->33f5b80483094659737b73d90f80a8a4m()Lebx;

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lebw;->a:Landroid/os/Bundle;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

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
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v0, p0, Lebw;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lebw;->b:Lehs;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lebw;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    invoke-virtual {v0, v1}, Lehs;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
