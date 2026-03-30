.class public final Lsgu;
.super Lsgt;
.source "PG"


# static fields
.field public static final c:Ljava/util/Map;


# instance fields
.field private final d:Lsef;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v4, v3

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v10, Lseg;->a:Lseg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    const/4 v3, 0x0

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

    :goto_7
    array-length v2, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    move v8, v3

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v6, 0xa

    nop

    nop

    goto/32 :goto_1d

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

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v9, v8, v5, v10}, Lsgu;-><init>(ILsef;Lseg;)V

    goto/32 :goto_21

    nop

    nop

    :goto_e
    const-class v1, Lsef;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    goto :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    :goto_13
    if-lt v4, v2, :cond_0

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

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_15
    new-instance v9, Lsgu;

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

    :goto_16
    invoke-static {}, Lsef;->values()[Lsef;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xb

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v8, v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-array v7, v6, [Lsgu;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/util/EnumMap;

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

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    aput-object v9, v7, v8

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

    :goto_22
    aget-object v5, v1, v4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    sput-object v0, Lsgu;->c:Ljava/util/Map;

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

    :goto_24
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(ILsef;Lseg;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p1, 0xffdf

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3}, Lseg;->d()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lsgu;->d:Lsef;

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

    nop

    nop

    :goto_6
    iget-char p0, p2, Lsef;->l:C

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

    :goto_7
    invoke-direct {p0, p3, p1}, Lsgt;-><init>(Lseg;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p3, p1}, Lseg;->f(Ljava/lang/StringBuilder;)V

    goto/32 :goto_e

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
    invoke-virtual {p3}, Lseg;->c()Z

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-char p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    if-nez p0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    const-string p2, "%"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    and-int/2addr p0, p1

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsgx;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lsgu;->d:Lsef;

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

    :goto_1
    iget-object p0, p0, Lsgt;->b:Lseg;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2, v0, p0}, Lsgx;->d(Ljava/lang/Object;Lsef;Lseg;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
