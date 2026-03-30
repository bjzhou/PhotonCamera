.class public final Lofi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lofi;

.field public static final b:Lofi;

.field public static final c:Lofi;


# instance fields
.field public final d:Lryy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lofj;->a:Lofj;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v1, Lofi;->a:Lofi;

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

    nop

    :goto_3
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

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

    nop

    nop

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Lrxv;->a(Ljava/util/EnumSet;)Lryy;

    move-result-object v0

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

    :goto_7
    new-instance v1, Lofi;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    instance-of v2, v0, Ljava/util/Collection;

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

    :goto_d
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    invoke-static {v1}, Lrxv;->a(Ljava/util/EnumSet;)Lryy;

    move-result-object v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_12
    invoke-static {v2, v0}, Lrgw;->W(Ljava/util/Collection;Ljava/util/Iterator;)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v2, Ljava/lang/Enum;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Lofi;-><init>(Lryy;)V

    goto/32 :goto_20

    nop

    nop

    :goto_16
    sput-object v0, Lofi;->c:Lofi;

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

    nop

    :goto_17
    new-instance v0, Lofi;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, v0}, Lofi;-><init>(Lryy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v2}, Lrxv;->a(Ljava/util/EnumSet;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_20
    sput-object v0, Lofi;->b:Lofi;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Lofi;

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

    :goto_22
    sget-object v1, Lsbn;->a:Lsbn;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0xa

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_27
    goto/16 :goto_e

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    :goto_2b
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-array v2, v2, [Lofj;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_30
    const-class v0, Lofj;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, v1}, Lofi;-><init>(Lryy;)V

    goto/32 :goto_16

    nop

    nop
.end method

.method public constructor <init>(Lryy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lofi;->d:Lryy;

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
.method public final a(Lofj;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lofi;->d:Lryy;

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
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lryy;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-object p1, p1, Lofi;->d:Lryy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_7
    check-cast p1, Lofi;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iget-object p0, p0, Lofi;->d:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    instance-of v0, p1, Lofi;

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lofi;->d:Lryy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lryy;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
