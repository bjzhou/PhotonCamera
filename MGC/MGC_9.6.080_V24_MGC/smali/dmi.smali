.class public final Ldmi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldjr;


# static fields
.field public static final a:Ldmi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ldmi;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    new-instance v0, Ldmi;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ldmi;->a:Ldmi;

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
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ldjs;)Landroid/graphics/Typeface;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const-string p2, "GoogleFont only support async loading: "

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
.end method

.method public final b(Landroid/content/Context;Ldjs;Ltzy;)Ljava/lang/Object;
    .locals 11

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gez p0, :cond_1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    const-string v1, "name="

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

    :goto_6
    invoke-virtual {p0}, Lufa;->y()V

    goto/32 :goto_56

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_8
    new-instance p0, Lufa;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p3}, Lrkm;->x(Ltzy;)Ltzy;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v6, v2

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v6, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    instance-of p0, p2, Ldmg;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    invoke-static {v1, v2}, La;->p(II)Z

    move-result v0

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

    nop

    :goto_14
    move p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_15
    invoke-static {p2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    move p0, v1

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 p1, 0x29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1b
    check-cast p0, Ldmg;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v10, p0, p2}, Ldmh;-><init>(Luez;Ldjs;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    sget-object v0, Ldlh;->n:Ldlh;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x6

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Ldmg;->e:Ldlh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lufa;->i()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_25
    throw p1

    nop

    :goto_26
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v3, v0}, Ldup;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    :goto_29
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2d
    const-string v1, "&italic="

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

    nop

    :goto_2e
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_30
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_31
    move p0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v3, Ldup;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_34
    invoke-static {v1, v2}, La;->p(II)Z

    move-result v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_35
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4a

    nop

    nop

    :goto_36
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v1, p0, Ldmg;->e:Ldlh;

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

    :goto_39
    invoke-static/range {v4 .. v10}, Ldvu;->C(Landroid/content/Context;Ljava/util/List;IZILandroid/os/Handler;Ldvu;)Landroid/graphics/Typeface;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3b
    move-object p0, p2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3c
    iget v0, p0, Ldmg;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    :goto_40
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object v4, p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_37

    nop

    :goto_45
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_46
    const-string p1, "Only GoogleFontImpl supported (actual "

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p2}, Lezz;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_48
    iget-object v1, p0, Ldmg;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const-string v3, "&besteffort=true"

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4a
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4c
    iget v1, v1, Ldlh;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_4d
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v4, p0, Ldmg;->d:Ldme;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_50
    const-string v1, "&weight="

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_51
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {p0, p3, v2}, Lufa;-><init>(Ltzy;I)V

    goto/32 :goto_6

    nop

    nop

    :goto_53
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, v0}, Ldlh;->a(Ldlh;)I

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_55
    iget v1, p0, Ldmg;->f:I

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v10, Ldmh;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    nop

    nop

    :goto_58
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v1, 0x0

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

    :goto_5b
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5c
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
