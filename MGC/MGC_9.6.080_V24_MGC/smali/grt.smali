.class public final Lgrt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private c:Z

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lhwy;Lggo;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lgrt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lgrt;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgrt;->b:Ljava/lang/Object;

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

    :goto_4
    iput-boolean p1, p0, Lgrt;->c:Z

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

    :goto_5
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lgrt;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgrt;->a:Ljava/lang/Object;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

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
    iput p3, p0, Lgrt;->d:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-object p2, p0, Lgrt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1, p0}, Lgru;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Lpik;)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xc

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

    :goto_6
    iput-boolean v1, p0, Lgrt;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_7
    iget-object v1, p0, Lgrt;->b:Ljava/lang/Object;

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

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgrt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    check-cast p1, Loxv;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lfwe;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_f
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lgrt;->c:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "set to "

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_63

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_16
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x7

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lpln;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_19
    check-cast p1, Landroid/util/Range;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    check-cast p1, Lrss;

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

    :goto_1c
    invoke-interface {v0, p1}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lgrt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean v0, p0, Lgrt;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    :goto_20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_21
    iget-object v0, p0, Lgrt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    if-ne v0, v2, :cond_3

    nop

    goto/32 :goto_4e

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lpik;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "Surface for "

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_29
    iput-boolean v1, p0, Lgrt;->c:Z

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lpln;->e()V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lgrt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_30
    check-cast p0, Lggo;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_4

    nop

    goto/32 :goto_39

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-boolean v0, p0, Lgrt;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, v0, Lhwy;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p1, :cond_6

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    :goto_37
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, v0, Lpln;->c:Lpcu;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3c
    const-string p1, "destroyed."

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_4a

    nop

    nop

    :goto_3e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v1, " was "

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Lhco;->i()Z

    move-result v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p1, Lhwy;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0, p1}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_47
    iput-boolean v1, p0, Lgrt;->c:Z

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p1}, Lpnu;->N()Z

    move-result p1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Lpln;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lgrt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_4c
    const/4 v2, 0x2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    return-void

    nop

    nop

    :goto_50
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_51
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_52
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_53
    goto :goto_48

    nop

    nop

    :goto_54
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v0, Lhco;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_37

    nop

    :goto_57
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_58
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_59
    check-cast v0, Lhwy;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lgrt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Lfwe;->close()V

    :goto_5c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-boolean v0, p0, Lgrt;->c:Z

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

    :goto_5e
    iget-object p0, p0, Lgrt;->a:Ljava/lang/Object;

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

    :goto_5f
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-eqz p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_a
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_62
    invoke-virtual {p0}, Lggo;->dC()V

    :goto_63
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-ne v0, v2, :cond_b

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4c

    nop

    nop

    :goto_65
    if-nez v2, :cond_c

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_c
    goto/32 :goto_25

    nop

    nop

    :goto_66
    goto/16 :goto_3d

    nop

    :goto_67
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_69
    iget v0, p0, Lgrt;->d:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6a
    check-cast v0, Lhwy;

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

    nop

    :goto_6b
    return-void

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6d
    iput-boolean v1, p0, Lgrt;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object p0, p0, Lgrt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method
