.class final Lmah;
.super Ltdx;
.source "PG"


# instance fields
.field private volatile a:Ltdx;

.field private volatile b:Ltdx;

.field private volatile c:Ltdx;

.field private final d:Ltdj;


# direct methods
.method public constructor <init>(Ltdj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmah;->d:Ltdj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_0

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

    nop
.end method


# virtual methods
.method public final synthetic a(Lthn;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_10

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    check-cast v1, Ljava/lang/Integer;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_6
    move v6, v0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, -0x1

    nop

    nop

    :goto_8
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_a
    iput-object v1, p0, Lmah;->b:Ltdx;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5d

    nop

    nop

    :goto_c
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_24

    nop

    nop

    :goto_d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    move-object v5, v1

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_2

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x5

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

    :goto_11
    invoke-virtual {p1}, Lthn;->r()Z

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, p0, Lmah;->c:Ltdx;

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_53

    nop

    nop

    :goto_16
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lmah;->d:Ltdj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v3, "min_os_version"

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v0, v2, :cond_4

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_75

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1b
    const-string v3, "target_os_prefix"

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

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_18

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_57

    nop

    nop

    :goto_20
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_42

    nop

    nop

    :goto_22
    move v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Lmah;->d:Ltdj;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_8
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq v3, v2, :cond_9

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_9
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v3}, Ltdj;->b(Ljava/lang/Class;)Ltdx;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    const-class v3, Ljava/lang/Integer;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v1, Lmag;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v2, 0x9

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

    :goto_30
    const-string v3, "apex_size"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-ne v1, v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6f

    nop

    nop

    :goto_32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_3

    nop

    nop

    :sswitch_2
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_35
    move v1, v5

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object v9, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_37
    const-string v3, "hal_version"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ne v1, v11, :cond_b

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_45

    nop

    :goto_3e
    goto/32 :goto_3c

    nop

    nop

    :goto_3f
    iget-object v1, p0, Lmah;->d:Ltdj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, v3}, Ltdj;->b(Ljava/lang/Class;)Ltdx;

    move-result-object v1

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

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Lthn;->o()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, p0, Lmah;->a:Ltdx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Lmah;->a:Ltdx;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-wide v7, v3

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, v3}, Ltdj;->b(Ljava/lang/Class;)Ltdx;

    move-result-object v1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_48
    move-object v9, v1

    nop

    nop

    :goto_49
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v4, 0x3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4b
    iput-object v1, p0, Lmah;->a:Ltdx;

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_35

    nop

    nop

    :goto_4e
    move v1, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_45

    nop

    :goto_50
    goto/32 :goto_6b

    nop

    nop

    :goto_51
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v11, 0x1

    nop

    nop

    sparse-switch v3, :sswitch_data_0

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_54
    const-wide/16 v3, 0x0

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

    :goto_55
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49856a76 -> :sswitch_0
        0x3b20132c -> :sswitch_3
        0x5087641f -> :sswitch_1
        0x517d34fe -> :sswitch_2
    .end sparse-switch

    :goto_56
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v1, p0, Lmah;->d:Ltdj;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move v1, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-class v3, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-class v3, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput-object v1, p0, Lmah;->a:Ltdx;

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct/range {v5 .. v10}, Lmag;-><init>(IJLjava/lang/String;I)V

    :goto_60
    goto/32 :goto_55

    nop

    nop

    :goto_61
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_62
    invoke-virtual {p1}, Lthn;->m()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_56

    nop

    :goto_64
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_65
    iget-object v1, p0, Lmah;->c:Ltdx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_66
    move v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_67
    const-class v3, Ljava/lang/Long;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1}, Lthn;->h()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Lthn;->t()I

    move-result v3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-lez v0, :cond_e

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_63

    nop

    :goto_6b
    iget-object v1, p0, Lmah;->b:Ltdx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6c
    goto/16 :goto_49

    nop

    :goto_6d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p1}, Lthn;->t()I

    move-result v0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6f
    if-ne v1, v4, :cond_f

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_45

    nop

    nop

    :goto_71
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_72
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p1}, Lthn;->q()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v3}, Ltdj;->b(Ljava/lang/Class;)Ltdx;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_39

    nop

    nop

    :goto_76
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_77
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_65

    nop

    nop

    :goto_79
    goto/16 :goto_8

    nop

    :sswitch_3
    goto/32 :goto_37

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string p0, "TypeAdapter(SidelineApexMetadata)"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method
