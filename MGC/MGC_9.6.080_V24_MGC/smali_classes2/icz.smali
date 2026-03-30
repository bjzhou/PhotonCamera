.class public Licz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Licu;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "icz"

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Licz;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3

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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Licz;->c:Ljava/lang/String;

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

    :goto_1
    return-void

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

    :goto_3
    iput-object p1, p0, Licz;->b:Landroid/content/Context;

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
.end method


# virtual methods
.method public final a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    goto/32 :goto_2e

    nop

    nop

    :goto_4
    const-string v8, "content"

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

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

    nop

    nop

    :goto_7
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

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

    :goto_8
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_b
    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_61

    nop

    :goto_f
    goto/32 :goto_60

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x12

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v7, "special_type_description"

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v6, v6, Lnyi;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->yPSEQMWmFu:Ljava/lang/String;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1a
    new-instance v7, Landroid/net/Uri$Builder;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

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

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    if-nez v6, :cond_3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_3
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v7, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v8, p0, Licz;->c:Ljava/lang/String;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_22
    if-nez v6, :cond_4

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

    :cond_4
    goto/32 :goto_76

    nop

    nop

    :goto_23
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_24
    const-string v7, "special_type_preserve_on_edit"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    iget v7, p1, Lidb;->x:I

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

    :goto_26
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_27
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_28
    sget-object p0, Licz;->a:Lsdb;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lidb;->d()Lrss;

    move-result-object v6

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v6, p0, Licz;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2b
    const-string v7, "configuration"

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

    :goto_2c
    goto/16 :goto_8a

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2e
    array-length v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_2f
    check-cast p1, Lidb;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_30
    goto/16 :goto_58

    nop

    :pswitch_0
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

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

    nop

    :goto_32
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v6, p0, Licz;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p0, v1, p1, p2}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v6, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_37
    if-nez v6, :cond_5

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_62

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Lidb;->d()Lrss;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_8a

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3e
    const/4 v6, 0x1

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3f
    goto/16 :goto_58

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    nop

    nop

    nop

    sparse-switch v7, :sswitch_data_0

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v7, "special_type_name"

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_42
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_43
    if-eq p1, v6, :cond_7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_7
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_45
    const-string v7, "edit_activity_package_name"

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

    nop

    :goto_46
    goto/16 :goto_8a

    nop

    :sswitch_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v7, "launch_activity_package_name"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v6, :cond_8

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aput-object v6, v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_14

    nop

    nop

    :goto_4b
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v6, :cond_9

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    aput-object v6, v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v6, 0x3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    goto/32 :goto_8d

    nop

    nop

    :goto_51
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v1}, Lidb;->b(Ljava/lang/String;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_54
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_6

    nop

    nop

    :goto_56
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

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

    :goto_57
    aput-object v6, v2, v5

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_59
    new-instance v0, Landroid/database/MatrixCursor;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-lt v4, v1, :cond_a

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

    :cond_a
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b3cb4fb -> :sswitch_1
        -0x51f4f261 -> :sswitch_3
        -0x1cf2d178 -> :sswitch_5
        0xd31806a -> :sswitch_0
        0x14538ccb -> :sswitch_6
        0x733374f6 -> :sswitch_7
        0x756e64d6 -> :sswitch_2
        0x757df53d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :goto_5c
    goto/32 :goto_8e

    nop

    nop

    :goto_5d
    aget-object v6, p2, v4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5e
    if-nez v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v6, p1, Lidb;->y:I

    nop

    nop

    :goto_61
    goto/32 :goto_1a

    nop

    nop

    :goto_62
    const/4 v6, 0x4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_63
    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const-string v7, "special_type_icon_uri"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_58

    nop

    :pswitch_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_67
    aput-object v6, v2, v5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    sget-object v6, Lidb;->o:Lidb;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_8a

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v8, "icon"

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v6, p1, Lidb;->v:Lnyi;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_70
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_71
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

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

    :goto_73
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_75
    new-array v2, v1, [Ljava/lang/Object;

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

    :goto_76
    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v6, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_c
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_2b

    nop

    nop

    :goto_79
    const-string v7, "interact_activity_package_name"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7a
    if-nez v6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_7b
    iget v7, p1, Lidb;->w:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7c
    const/4 v6, 0x7

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_7d
    move v6, v3

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

    :goto_7e
    check-cast p0, Lscz;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7f
    sget-object v1, Lidb;->a:Lidb;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    aput-object v6, v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_81
    sget-object v6, Lidb;->p:Lidb;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_82
    iget-object v6, p0, Licz;->b:Landroid/content/Context;

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

    :goto_83
    if-eq p1, v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const v1, 0x13

    nop

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

    :goto_86
    const/16 v1, 0x566

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_87
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_88
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_89
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    :goto_8a
    packed-switch v6, :pswitch_data_0

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget v6, v6, Lidb;->y:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_58

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    aput-object v6, v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop
.end method
