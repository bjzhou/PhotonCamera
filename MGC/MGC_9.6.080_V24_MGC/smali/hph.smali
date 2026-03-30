.class public final synthetic Lhph;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lhph;->b:I

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

.method public constructor <init>(Lvm;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lhph;->b:I

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v4, p2, Lpsh;->b:J

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

    nop

    nop

    :goto_2
    move-object p2, v1

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v0}, Lhpj;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_af

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p1, Lpsh;->e:Lpth;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    iget-object v0, p1, Lmhd;->a:Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_3
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_5d

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_42

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p2, Lpsh;->e:Lpth;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_16
    if-ne v0, v5, :cond_5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_6
    :goto_18
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    :goto_1a
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lvj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1c
    goto :goto_1f

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    :goto_1f
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p1, Lpsh;->c:Ljava/lang/String;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v2, p0, :cond_7

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v4, p2, Lmhd;->a:Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lhph;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_8

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_a2

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_a1

    nop

    nop

    :goto_2c
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

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

    :goto_2d
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_2f
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_32
    if-ne p0, p1, :cond_9

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return v2

    nop

    nop

    :goto_34
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    nop

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

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lpsu;->f:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lmfj;->a:Lmgh;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lhph;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne p0, p1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x1

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_3e
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p0, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Lrrf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_41
    move v0, v1

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, v1, Lvm;->j:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p1, Lmhd;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_45
    neg-int v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p2, Lvj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0}, Lpth;->i()Lptp;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0}, Lpth;->i()Lptp;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_49
    move v1, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4a
    check-cast p0, Landroid/util/ArraySet;

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

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v1, Lph;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v1, p0, Lhph;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4f
    iget-boolean p1, p2, Lmhd;->d:Z

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_50
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_69

    nop

    :goto_51
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_52
    check-cast v1, Lvm;

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_53
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v0}, Lrrf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v2, [Lubk;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aget-object v2, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v1, v1, Lvm;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_59
    iget-wide p0, p1, Lpsh;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v2, p2}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lhph;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_5c
    throw p0

    nop

    :goto_5d
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_5e
    iget-object p1, p1, Lvj;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5f
    check-cast p2, Lggk;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v2, v2, Lvm;->j:Ljava/util/List;

    nop

    nop

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

    :goto_61
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-nez p2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-instance p0, Ljava/lang/ArithmeticException;

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_65
    invoke-interface {p0}, Lpth;->i()Lptp;

    move-result-object p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_66
    invoke-interface {p1}, Lggl;->j()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v3, Ljava/lang/Comparable;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_6c
    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    nop

    :goto_6e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object p0, p0, Lhph;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_5d

    nop

    :goto_71
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_22

    nop

    nop

    :goto_73
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_74
    if-eqz v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v1, Lvm;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_76
    check-cast v1, Lph;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_78
    invoke-interface {p2}, Lggk;->b()Lggl;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_7a
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_8c

    nop

    nop

    :goto_7c
    iget-wide v0, p1, Lpsh;->b:J

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_7d
    invoke-interface {p2}, Lggl;->j()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-wide v0, p2, Lpsh;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_6a

    nop

    :goto_80
    return p0

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {v0, p2}, Lrkm;->D(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_83
    if-nez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_bf

    nop

    nop

    :goto_84
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    check-cast p2, Lpsh;

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

    :goto_86
    iget-object v2, p0, Lhph;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v2, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v0, p2, Lpsh;->e:Lpth;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast p0, Lmfj;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_8a
    if-eqz p0, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v2, Lvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_8c
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast p2, Lmhd;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v3, v2}, Lrkm;->D(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object p1, p2, Lvj;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v0}, Lrrf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_91
    if-ne v0, v4, :cond_12

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-gtz v2, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_6e

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_95
    check-cast p1, Lggk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

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

    :goto_97
    iget-object v1, p2, Lpsh;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v2, v2, Lvm;->j:Ljava/util/List;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget v0, p0, Lhph;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9b
    iget-object p0, p1, Lpsh;->e:Lpth;

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

    :goto_9c
    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_9e
    if-lt v0, v4, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_14
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast p2, Lph;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_a0
    invoke-interface {v0}, Lpth;->i()Lptp;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move v1, p0

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast p1, Lpsh;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_a6
    if-nez v0, :cond_15

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_15
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-eqz p0, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_16
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_a9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_ab
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_ac
    iget-object v2, p0, Lhph;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-eqz v0, :cond_17

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b1
    if-nez v0, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    :cond_18
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast p0, Lpsu;

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_b4
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-boolean p0, p1, Lmhd;->d:Z

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_b6
    const/4 v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b7
    invoke-interface {p0}, Lmgh;->b()Ljava/util/Comparator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-static {p2, p0}, Lhpj;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_b9
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object p0, p0, Lpsu;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_bc
    throw p0

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v0, v0, Lptp;->d:Ljava/lang/String;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_bf
    iget-object v0, p0, Lpsu;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v0, v0, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-interface {v0}, Lpth;->i()Lptp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_c2
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c3
    goto/16 :goto_6e

    nop

    nop

    :goto_c4
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-static {v0}, Lrrf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-interface {p1}, Lggk;->b()Lggl;

    move-result-object p1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v0, p0, Lpsu;->f:Ljava/lang/String;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    check-cast v2, Ljava/lang/Comparable;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    return v1

    nop

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_ce
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_d0
    const/high16 p1, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_d1
    if-nez v1, :cond_19

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_96

    nop

    nop

    :goto_d2
    iget-object v0, p2, Lpsh;->e:Lpth;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_d3
    goto/16 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const v0, 0x18

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_d6
    if-gtz v2, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d7
    check-cast v0, Lph;

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-interface {v0}, Lpth;->i()Lptp;

    move-result-object v0

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

    :goto_d9
    check-cast v2, Lvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v0, v0, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_db
    if-ne v0, v2, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v1, p0, Lhph;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_dd
    iget-object v0, p1, Lpsh;->e:Lpth;

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop
.end method
