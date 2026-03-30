.class public abstract Laxr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcfs;


# instance fields
.field public final a:Laxs;

.field public final b:Laxs;

.field public final c:Laxs;

.field public final d:Laxs;


# direct methods
.method public constructor <init>(Laxs;Laxs;Laxs;Laxs;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Laxr;->d:Laxs;

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

    :goto_1
    iput-object p3, p0, Laxr;->c:Laxs;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Laxr;->a:Laxs;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p2, p0, Laxr;->b:Laxs;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static synthetic d(Laxr;Laxs;Laxs;Laxs;I)Laxr;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-int/lit8 v0, p4, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Laxr;->b:Laxs;

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

    :goto_4
    if-nez p4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, v0, p2, p3}, Laxr;->b(Laxs;Laxs;Laxs;Laxs;)Laxr;

    move-result-object p0

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

    :goto_6
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    and-int/lit8 v0, p4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Laxr;->a:Laxs;

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Laxr;->c:Laxs;

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    and-int/lit8 p4, p4, 0x4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(JLdpq;Ldpb;)Lcfe;
    .locals 11

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    invoke-interface {v6, p1, p2, p4}, Laxs;->a(JLdpb;)F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmpl-float v9, v4, v8

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

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    :goto_4
    cmpl-float v9, v4, v8

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v8, ", bottomStart = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_8
    div-float/2addr v8, v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_9
    div-float v4, v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    if-gtz v9, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    move v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    add-float v4, v6, v5

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

    nop

    :goto_f
    const-string v8, "Corner size in Px can\'t be negative(topStart = "

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    if-gez v8, :cond_1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_12
    iget-object v4, p0, Laxr;->d:Laxs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_13
    cmpl-float v8, v4, v6

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v7, p3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_15
    move v3, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    invoke-static {v6}, Laog;->a(Ljava/lang/String;)V

    :goto_17
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_18
    invoke-interface {v5, p1, p2, p4}, Laxs;->a(JLdpb;)F

    move-result v5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, p2}, Lcdn;->b(J)F

    move-result v8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-gez v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float/2addr v5, v8

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    if-gtz v9, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v8, ", bottomEnd = "

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gez v8, :cond_4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    :goto_24
    invoke-interface {v7, p1, p2, p4}, Laxs;->a(JLdpb;)F

    move-result v7

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

    :goto_25
    if-ltz v6, :cond_5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    :goto_26
    goto/32 :goto_a

    nop

    nop

    :goto_27
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v8, ", topEnd = "

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

    :goto_29
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v4, p1, p2, p4}, Laxs;->a(JLdpb;)F

    move-result v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v5, p0, Laxr;->c:Laxs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v8, ")!"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-float v8, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    move-wide v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-float v4, v7, v3

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

    :goto_35
    invoke-virtual/range {v0 .. v7}, Laxr;->c(JFFFFLdpq;)Lcfe;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_36
    move v4, v6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x12

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_38
    move v6, v7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_39
    mul-float/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3b
    cmpl-float v8, v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3c
    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3e
    iget-object v6, p0, Laxr;->b:Laxs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3f
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_32

    nop

    nop

    :goto_41
    move v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_42
    iget-object v7, p0, Laxr;->a:Laxs;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_31

    nop

    :goto_44
    cmpl-float v6, v7, v6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_45
    mul-float/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public abstract b(Laxs;Laxs;Laxs;Laxs;)Laxr;
.end method

.method public abstract c(JFFFFLdpq;)Lcfe;
.end method
