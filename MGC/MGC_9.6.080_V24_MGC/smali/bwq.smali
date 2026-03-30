.class final Lbwq;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# static fields
.field public static final a:Lbwq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lbwq;->a:Lbwq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lbwq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lbwq;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
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

    :goto_1
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_0
    ushr-int/lit8 v7, v7, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iget-object p1, p2, Lbwx;->d:Lyg;

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

    :goto_2
    check-cast p2, Lbwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    move v6, v1

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    rsub-int/lit8 v7, v7, 0x8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    if-nez v5, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    const/4 v7, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_a
    not-int v7, v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget-object p0, p2, Lbwx;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    const/16 v8, 0x8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p1, Lyg;->a:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_e
    and-long/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lrkm;->Z(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    shr-long/2addr v3, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_13
    const-wide/16 v9, 0xff

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v0, v0, -0x2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v7, v8, :cond_1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_19
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1a
    sub-int v5, v2, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    and-long/2addr v9, v3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0xd

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

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_20
    check-cast v7, Lbwt;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_22
    iget-object p2, p1, Lyg;->c:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    cmp-long v5, v5, v7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_26
    shl-int/lit8 v7, v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v6, v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmp-long v7, v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_9

    nop

    :goto_2a
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    :goto_2c
    invoke-virtual {v7, p0}, Lbwt;->a(Ljava/util/Map;)V

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2e
    array-length v0, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_31
    and-long/2addr v5, v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_32
    if-gez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    not-long v5, v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_34
    aget-object v7, p2, v7

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

    :goto_35
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2a

    nop

    nop

    :goto_37
    goto :goto_30

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-wide/16 v11, 0x80

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3a
    shl-long/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3b
    const v0, 0x17

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3c
    if-ne v2, v0, :cond_5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3e
    check-cast p1, Lbxh;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3f
    if-ltz v7, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_40
    aget-wide v3, p1, v2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop
.end method
