.class public final enum Lnyi;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lnyi;

.field public static final enum b:Lnyi;

.field public static final enum c:Lnyi;

.field public static final enum d:Lnyi;

.field private static final f:Ljava/util/Set;

.field private static final synthetic g:[Lnyi;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v1, Lnyi;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v3, Lnyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v4, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    const-string v1, "BADGE"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lnyi;->a:Lnyi;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const-string v5, "interact"

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c
    sput-object v1, Lnyi;->b:Lnyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    new-instance v1, Lnyi;

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

    :goto_e
    filled-new-array {v0, v1, v2, v3}, [Lnyi;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v4, "edit"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v4, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v4, Lnyi;->g:[Lnyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    iget-object v0, v0, Lnyi;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_17
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1a
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1c
    const-string v2, "EDIT"

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1d
    sput-object v2, Lnyi;->c:Lnyi;

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

    :goto_1e
    new-instance v2, Lnyi;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1f
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_25

    nop

    nop

    :goto_20
    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v3, "badge"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_22
    new-instance v0, Lnyi;

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

    :goto_23
    const-string v3, "INTERACT"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_24
    const-string v4, "LAUNCH"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    iget-object v0, v3, Lnyi;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v6, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->izJTKEI:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2a
    sput-object v3, Lnyi;->d:Lnyi;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v3, v4, v5, v6}, Lnyi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_2c
    invoke-direct {v0, v1, v2, v3}, Lnyi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v2, v3, v4, v5}, Lnyi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    invoke-direct {v1, v2, v3, v4}, Lnyi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2f
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_30
    sput-object v0, Lnyi;->f:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, v2, Lnyi;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v3, 0x1

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
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p3, p0, Lnyi;->e:Ljava/lang/String;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lnyi;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lnyi;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, [Lnyi;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    sget-object v0, Lnyi;->g:[Lnyi;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnyi;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method
