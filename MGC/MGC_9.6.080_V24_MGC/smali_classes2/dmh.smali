.class public final Ldmh;
.super Ldvu;
.source "PG"


# instance fields
.field final synthetic a:Luez;

.field final synthetic b:Ldjs;


# direct methods
.method public constructor <init>(Luez;Ldjs;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ldvu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ldmh;->b:Ldjs;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldmh;->a:Luez;

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


# virtual methods
.method public final h(I)V
    .locals 3

    goto/32 :goto_23

    nop

    nop

    :goto_0
    goto/16 :goto_1a

    nop

    :goto_1
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x2

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

    :goto_3
    if-ne p1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    const/4 v2, 0x1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "The given provider cannot be authenticated with the certificates given."

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, -0x3

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

    :goto_e
    const v1, 0x12

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
    const-string p1, "The provider found the queried font, but it is currently unavailable."

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_10
    if-ne p1, v2, :cond_1

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1e

    nop

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

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Ldmh;->b:Ldjs;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    nop

    nop

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_19
    const-string p1, "Generic error loading font, for example variation settings were not parsable"

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    invoke-interface {p0, v0}, Luez;->g(Ljava/lang/Throwable;)Z

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne p1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    goto :goto_1a

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_22
    const-string v2, "Failed to load "

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x11

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ne p1, v2, :cond_4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_25
    const-string p1, "The given query was not supported by this provider."

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    sget-object p1, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->MOmtdHbTLknB:Ljava/lang/String;

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

    :goto_27
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Ldmh;->a:Luez;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v2, " (reason="

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

    :goto_2c
    const-string p1, "Unknown error code"

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

    :goto_2d
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_1a

    nop

    nop

    :goto_30
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-ne p1, v2, :cond_5

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_37
    const-string v2, ", "

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_38
    const/16 p1, 0x29

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

    :goto_39
    const/4 v2, -0x1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne p1, v2, :cond_6

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3c
    const-string p1, "The requested provider was not found on this device."

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Landroid/graphics/Typeface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldmh;->a:Luez;

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-interface {p0, p1}, Ltzy;->t(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
