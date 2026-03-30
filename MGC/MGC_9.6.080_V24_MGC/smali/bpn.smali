.class final Lbpn;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbmn;

.field final synthetic b:Lyj;


# direct methods
.method public constructor <init>(Lyj;Lbmn;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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
    iput-object p1, p0, Lbpn;->b:Lyj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p2, p0, Lbpn;->a:Lbmn;

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

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 15

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2
    iget-object v0, p0, Lbpn;->b:Lyj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    sub-int v7, v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v9, p0, Lbpn;->a:Lbmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    not-int v9, v7

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    shl-long/2addr v7, v9

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    cmp-long v9, v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8
    and-long/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-interface {v9, v11}, Lbmn;->p(Ljava/lang/Object;)V

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    shr-long/2addr v5, v10

    nop

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

    :goto_c
    if-ne v4, v2, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v9, v10, :cond_1

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

    :cond_1
    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v10, 0x8

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_11
    cmp-long v7, v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_12
    ushr-int/lit8 v9, v9, 0x1f

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

    :goto_13
    iget-object v0, v0, Lyj;->a:[J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    shl-int/lit8 v11, v4, 0x3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_15
    goto/16 :goto_22

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    aget-wide v5, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    array-length v2, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

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

    :goto_1b
    add-int/lit8 v2, v2, -0x2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v0, Lyj;->b:[Ljava/lang/Object;

    nop

    nop

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

    :goto_1d
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    and-long/2addr v7, v5

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

    nop

    :goto_1f
    aget-object v11, v1, v11

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_21
    move v4, v3

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v9, 0x7

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

    :goto_24
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rsub-int/lit8 v9, v9, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    :goto_27
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_29
    if-nez v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lt v8, v9, :cond_5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    const-wide/16 v11, 0xff

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2f

    nop

    nop

    :goto_2d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-ltz v9, :cond_6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    :goto_31
    and-long/2addr v11, v5

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    not-long v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_34
    move v8, v3

    nop

    nop

    :goto_35
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-wide/16 v13, 0x80

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_38
    add-int/2addr v11, v8

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop
.end method
