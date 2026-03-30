.class public final Lics;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Licu;


# instance fields
.field private final a:Landroid/content/UriMatcher;

.field private final b:Landroid/content/Context;

.field private final c:Lico;

.field private final d:Lidi;

.field private final e:Lhoh;


# direct methods
.method public constructor <init>(Lico;Landroid/content/UriMatcher;Lidi;Lhoh;Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lics;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lics;->c:Lico;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lics;->e:Lhoh;

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

    :goto_5
    iput-object p3, p0, Lics;->d:Lidi;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lics;->a:Landroid/content/UriMatcher;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "invalid projection: "

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x14

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

    :goto_2
    const-string v7, "progress_percentage"

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v7, :cond_0

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_7c

    nop

    nop

    :goto_4
    if-nez v7, :cond_1

    nop

    goto/32 :goto_70

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    :goto_5
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

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

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v8, v6, v7}, Lidi;->a(J)Lrss;

    move-result-object v6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_3d

    nop

    :goto_a
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v5, Lidb;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v7, Lhnh;->a:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_e
    aget-object v5, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_f
    if-nez v5, :cond_2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6e

    nop

    nop

    :goto_10
    iget-object p1, p0, Lics;->c:Lico;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p2, "Unrecognized uri: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    array-length v5, p2

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_15
    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lics;->c:Lico;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_17
    check-cast v6, Lidb;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v7, v10

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

    :goto_1b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v5, :cond_3

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lico;->c()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v5}, Lidb;->f()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_23
    if-nez v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_25
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_26
    move v7, v8

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x16

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p1}, Lhhg;->W(Landroid/net/Uri;)J

    move-result-wide v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    goto/16 :goto_8d

    nop

    nop

    :goto_2b
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v5, v7}, Lhoh;->p(Lhmn;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Licm;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Licm;->c()Lpcj;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_32
    array-length v2, p2

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

    :goto_33
    if-ne v7, v9, :cond_5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_34
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v7, :cond_6

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

    :cond_6
    goto/32 :goto_4e

    nop

    nop

    :goto_37
    const/4 v8, 0x4

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

    :goto_38
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_39
    if-ne v7, v11, :cond_7

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3b
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_8
    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    move v4, v3

    nop

    nop

    :goto_3d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_6d

    nop

    nop

    :goto_41
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_42
    if-nez v7, :cond_9

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_82

    nop

    nop

    :goto_43
    goto/16 :goto_6d

    nop

    nop

    :goto_44
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v5}, Lidb;->e()Lrss;

    move-result-object v5

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v0, Landroid/database/MatrixCursor;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Licm;->g()I

    move-result v5

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2, v0, v1}, Lico;->a(J)Lrss;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4a
    aput-object v5, v2, v4

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v5, :cond_a

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6b

    nop

    nop

    :goto_4e
    move v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v7, :cond_b

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_26

    nop

    nop

    :goto_52
    aput-object v5, v2, v4

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_54
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_55
    iget-object v5, p0, Lics;->e:Lhoh;

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

    :goto_56
    if-eq v7, v8, :cond_c

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v5

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-string v7, "processing_text"

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

    nop

    nop

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast v5, Lidb;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5d
    goto/16 :goto_7

    nop

    nop

    :goto_5e
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-ne v0, v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_94

    nop

    nop

    :goto_60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_61
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    :goto_64
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_67
    const-string v7, "progress_status"

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

    nop

    :goto_68
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_69
    const/4 v11, 0x1

    nop

    nop

    sparse-switch v7, :sswitch_data_0

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

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

    nop

    :goto_6c
    aput-object v5, v2, v4

    nop

    nop

    :goto_6d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v5, p0, Lics;->b:Landroid/content/Context;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_6f
    goto :goto_6d

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v8, p0, Lics;->d:Lidi;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_72
    if-eq v0, v1, :cond_e

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_73
    aput-object v5, v2, v4

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

    :goto_74
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const-string v7, "special_type_id"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_76
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_10

    nop

    nop

    :goto_78
    iget-wide v6, v6, Llxh;->a:J

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_79
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7a
    if-ne v7, v10, :cond_f

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v5, v1, Licm;->a:Llxh;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move v7, v11

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

    :goto_7d
    invoke-virtual {v6}, Lidb;->e()Lrss;

    move-result-object v6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_7e
    if-lt v4, v5, :cond_10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_10
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, p0, Lics;->a:Landroid/content/UriMatcher;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    aput-object v5, v2, v4

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_81
    if-nez v5, :cond_11

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_83
    if-lez v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_12
    goto/32 :goto_4b

    nop

    :goto_84
    if-nez v1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    check-cast v1, Licm;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_88
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const-string v7, "media_store_id"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8c
    const/4 v7, -0x1

    nop

    :goto_8d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_4c

    nop

    nop

    :goto_8f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

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

    nop

    :goto_90
    iget-wide v5, v5, Llxh;->a:J

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_91
    goto :goto_8d

    nop

    nop

    :sswitch_2
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_93
    aget-object v5, p2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v6, v1, Licm;->a:Llxh;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    return-object v0

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x380051bc -> :sswitch_2
        -0x35cc0146 -> :sswitch_0
        0x2a457ec -> :sswitch_4
        0x53e52334 -> :sswitch_3
        0x6ab842d9 -> :sswitch_1
    .end sparse-switch

    :goto_98
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    goto/16 :goto_8d

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_8a

    nop

    nop

    :goto_9a
    goto/16 :goto_8d

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

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

    :goto_9c
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop
.end method
