.class public final Loiw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lwu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Loiw;->b:Ljava/lang/Object;

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
    new-instance v0, Lwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Loiw;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Loiw;->c:Ljava/lang/Object;

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

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput p1, p0, Loiw;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Loiw;->a:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Loiw;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    new-array p1, p1, [F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p1, 0x10

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Loiw;->b:Ljava/lang/Object;

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
.end method


# virtual methods
.method final a(IILandroid/content/Intent;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1, p2, p3}, Loit;->c(IILandroid/content/Intent;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Loit;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

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

    :goto_e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_18

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_5

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Loiw;->a:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_16
    check-cast v1, Loit;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1b
    iput-object p1, p0, Loiw;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v0}, Loit;->d(Landroid/os/Bundle;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    const v1, 0x17

    nop

    goto/32 :goto_20

    nop

    nop
.end method

.method final c()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Loit;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iput v0, p0, Loiw;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method final d()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Loiw;->a:I

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

    :goto_6
    invoke-virtual {v0}, Loit;->h()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    check-cast v0, Loit;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return-void

    nop
.end method

.method final e(Landroid/os/Bundle;)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-virtual {v2, v1}, Loit;->g(Landroid/os/Bundle;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_5

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v2, Loit;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    check-cast v0, Ljava/util/Map$Entry;

    nop

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

    :goto_14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Ljava/lang/String;

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

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    const v1, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method final f()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

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

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_5
    invoke-virtual {v0}, Loit;->i()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Loiw;->a:I

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

    :goto_7
    goto :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Loit;

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

    nop

    :goto_a
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final g()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Loit;->j()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Loit;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x4

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

    :goto_8
    iput v0, p0, Loiw;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method final h(Loit;)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    :goto_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0xc

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Loiw;->a:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Loof;

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

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-gtz v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

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

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Loof;->post(Ljava/lang/Runnable;)Z

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Loof;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    const-string p1, "LifecycleCallback with tag ConnectionlessLifecycleHelper already added to this fragment."

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_19
    iget-object v0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "ConnectionlessLifecycleHelper"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    new-instance v1, Lmcf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, p0, p1, v2}, Lmcf;-><init>(Loiw;Loit;I)V

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method final i()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Loit;

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

    :goto_6
    return-void

    nop

    :goto_7
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

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

    :goto_8
    goto :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method final j(Ljava/lang/Class;)Loit;
    .locals 1

    goto/32 :goto_4

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

    :goto_1
    check-cast p0, Loit;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "ConnectionlessLifecycleHelper"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object p0, p0, Loiw;->b:Ljava/lang/Object;

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

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget v0, p0, Loiw;->a:I

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    nop

    nop

    nop

    nop

    add-int/2addr v0, p1

    nop

    iput v0, p0, Loiw;->a:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

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

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lad;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0}, Lad;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Ljava/text/Format;Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    check-cast v4, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4
    invoke-direct {v6, v7, v4, v8, v9}, Ldsg;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v9, p2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget p2, p0, Loiw;->a:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v7, Ljava/text/AttributedCharacterIterator$Attribute;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_a
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    :goto_c
    goto/16 :goto_26

    nop

    nop

    :goto_d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_15
    new-instance p1, Lad;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Loiw;->b:Ljava/lang/Object;

    nop

    :try_start_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    sub-int v3, v2, v1

    nop

    nop

    nop

    nop

    if-ge v1, v2, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v4

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_18
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v4

    nop

    nop

    nop

    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    :goto_1b
    throw p1

    nop

    :goto_1c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    move v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_38

    nop

    nop

    :goto_22
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Loiw;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    new-instance v6, Ldsg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    sub-int/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_27
    add-int/2addr v3, p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p1, p0}, Lad;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_31
    if-lt v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v3, p0, Loiw;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v5, p0, Loiw;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_35
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_36
    add-int v8, p2, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_37
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    goto/32 :goto_10

    nop

    nop

    :goto_38
    invoke-virtual {p1, p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, p1}, Loiw;->k(Ljava/lang/CharSequence;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2}, Loiw;->l(Ljava/text/Format;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iget-object v0, p0, Loiw;->c:Ljava/lang/Object;

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

    :goto_7
    invoke-virtual {p0, p3}, Loiw;->k(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
