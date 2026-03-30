.class public final Lcfv;
.super Lbzy;
.source "PG"

# interfaces
.implements Lcss;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:J

.field public g:Lcfs;

.field public h:Z

.field public i:J

.field public j:J

.field public final k:Lubk;


# direct methods
.method public constructor <init>(FFFFFJLcfs;ZJJ)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p9, p0, Lcfv;->h:Z

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

    :goto_1
    iput p3, p0, Lcfv;->c:F

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

    :goto_2
    iput p1, p0, Lcfv;->a:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcfv;->k:Lubk;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lbzy;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lcft;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    iput p4, p0, Lcfv;->d:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iput-object p8, p0, Lcfv;->g:Lcfs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    iput-wide p12, p0, Lcfv;->j:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iput p2, p0, Lcfv;->b:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iput p5, p0, Lcfv;->e:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p0}, Lcft;-><init>(Lcfv;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iput-wide p6, p0, Lcfv;->f:J

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

    :goto_e
    iput-wide p10, p0, Lcfv;->i:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcpc;Lcoy;J)Lcpa;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcfu;

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

    :goto_1
    invoke-static {p1, p3, p4, v0}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p2, p3, p4}, Lcoy;->l(J)Lcpp;

    move-result-object p2

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

    :goto_3
    iget p3, p2, Lcpp;->a:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p2, p0}, Lcfu;-><init>(Lcpp;Lcfv;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget p4, p2, Lcpp;->b:I

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

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final cl()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Lcfv;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, ", cameraDistance="

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const/4 v6, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, ", alpha = "

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_b
    aput-object v4, v3, v6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    :goto_d
    const/4 v6, 0x0

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
    const-string v1, ", clip="

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_10
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, ", shape="

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-array v3, v3, [Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_14
    const-string v1, ", translationX=0.0, translationY=0.0, shadowElevation=0.0, rotationX=0.0, rotationY=0.0, rotationZ="

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    const-string p0, ", compositingStrategy=CompositingStrategy(value=0))"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    :goto_19
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1c
    aput-object v4, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-wide v1, p0, Lcfv;->j:J

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, ", renderEffect=null, ambientShadowColor="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v6, 0x0

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

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, p0, Lcfv;->a:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    const-string v1, ", scaleY="

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2e
    const-string v1, ", spotShadowColor="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2f
    const/16 v5, 0x2e0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_30
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_33
    iget v1, p0, Lcfv;->b:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v6, 0x0

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

    nop

    :goto_35
    iget-wide v1, p0, Lcfv;->f:J

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

    :goto_36
    const/16 v5, 0x2de

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v1, p0, Lcfv;->h:Z

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Lcfv;->g:Lcfs;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    :goto_3b
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3e
    aput-object v4, v3, v6

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_40
    iget v1, p0, Lcfv;->c:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_42
    goto/32 :goto_3b

    nop

    nop

    :goto_43
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_43

    nop

    :goto_45
    const-string v1, "SimpleGraphicsLayerModifier(scaleX="

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_46
    iget v1, p0, Lcfv;->e:F

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_48
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v1, ", transformOrigin="

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 v5, 0x2df

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4e
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4f
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_50
    iget-wide v1, p0, Lcfv;->i:J

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method
