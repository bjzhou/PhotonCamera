.class public final Lfbv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfbv;


# instance fields
.field public b:Lfbw;

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    new-instance v0, Lfbv;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v1, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->bcut:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x15

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

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

    :goto_a
    const v1, 0x5

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

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lfbv;->a:Lfbv;

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

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Lfbv;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfbv;->b:Lfbw;

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

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    iput-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p1, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p1, Lfbv;->b:Lfbw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfbv;->c:Ljava/util/List;

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

    nop

    :goto_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1
    const-string v0, "**"

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

    :goto_2
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_6
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

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

    :goto_7
    iget-object p0, p0, Lfbv;->c:Ljava/util/List;

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
    return p0

    nop

    nop

    nop

    nop
.end method

.method private static final h(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "__container"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    add-int/2addr p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xb

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const/4 v2, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xc

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

    :goto_c
    const/4 p0, 0x2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

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

    nop

    :goto_f
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    return v1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_22

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq p2, v0, :cond_4

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

    :cond_4
    goto/32 :goto_1

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    invoke-static {p1}, Lfbv;->h(Ljava/lang/String;)Z

    move-result v0

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

    :goto_21
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    :goto_23
    const-string v2, "**"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_25
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public final b(Ljava/lang/String;)Lfbv;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, v0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lfbv;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lfbv;-><init>(Lfbv;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Lfbw;)Lfbv;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lfbv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lfbv;-><init>(Lfbv;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, v0, Lfbv;->b:Lfbw;

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
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;I)Z
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/String;

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

    :goto_1
    iget-object p2, p0, Lfbv;->c:Ljava/util/List;

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

    nop

    :goto_2
    if-ge p2, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_2
    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    :goto_d
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_14
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p2, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v2, p2, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    if-ne p2, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move p1, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v4

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    add-int/lit8 p1, p1, -0x2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_23
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    return v1

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz p1, :cond_7

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

    :cond_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return v1

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_51

    nop

    nop

    :goto_2d
    if-ne p2, p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lt v2, p2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3b

    nop

    nop

    :goto_32
    const-string p1, "*"

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

    nop

    :goto_33
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_34
    goto :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_36
    return p0

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_20

    nop

    nop

    :goto_38
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_39
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p1, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3e
    move p1, v4

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1b

    nop

    nop

    :goto_40
    goto/16 :goto_2c

    nop

    nop

    :goto_41
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_42
    add-int/lit8 p1, p1, -0x3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return v4

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {p0}, Lfbv;->d5484163cd8d335e6b17663474ff5f2bm()Z

    move-result p0

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

    :goto_46
    return v1

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_1

    nop

    nop

    :goto_48
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_49
    return v1

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4b
    if-eqz v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_12

    nop

    nop

    :goto_4c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4d
    const-string v3, "**"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4e
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3a

    nop

    :goto_4f
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_50
    if-eq p2, v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_d
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_51
    move v1, v4

    nop

    nop

    :goto_52
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p0}, Lfbv;->d5484163cd8d335e6b17663474ff5f2bm()Z

    move-result p0

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

    :goto_54
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-ne p2, v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_e
    goto/32 :goto_33

    nop

    nop

    :goto_56
    iget-object p1, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_57
    add-int/lit8 v0, v0, -0x2

    nop

    nop

    goto/32 :goto_50

    nop

    nop
.end method

.method public final e(Ljava/lang/String;I)Z
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6
    const-string p1, "*"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    iget-object p1, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    if-ge p2, v0, :cond_0

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

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_d
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_28

    nop

    nop

    :goto_13
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_16
    check-cast p0, Ljava/lang/String;

    nop

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

    :goto_17
    iget-object p0, p0, Lfbv;->c:Ljava/util/List;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "**"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    const v0, 0x1

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

    :goto_1b
    return v1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Ljava/lang/String;

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

    :goto_1e
    if-eqz p1, :cond_4

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

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v1

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Lfbv;->h(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    iget-object v3, p1, Lfbv;->c:Ljava/util/List;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_3
    iget-object v2, p0, Lfbv;->c:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p1, Lfbv;->b:Lfbw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    return v1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x11

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

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    :goto_17
    goto/32 :goto_21

    nop

    nop

    :goto_18
    iget-object p1, p1, Lfbv;->b:Lfbw;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_1a
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    :goto_1e
    if-ne v2, v3, :cond_4

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    :goto_1f
    return v0

    nop

    nop

    :goto_20
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lfbv;->b:Lfbw;

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

    :goto_22
    check-cast p1, Lfbv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p0, :cond_5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    :goto_26
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x11

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop
.end method

.method public final f(Ljava/lang/String;I)Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const-string v0, "__container"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    return v0

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    sget-object p1, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->MgtHlqUxoW:Ljava/lang/String;

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

    :goto_10
    if-ge p2, p1, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    iget-object p1, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

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

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lfbv;->b:Lfbw;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    :goto_7
    goto :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "KeyPath{keys="

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

    nop

    :goto_1
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    :goto_3
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfbv;->b:Lfbw;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lfbv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    const-string p0, "}"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    if-nez p0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_13
    goto/32 :goto_b

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x1

    nop

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

    :goto_18
    const-string v0, ",resolved="

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
